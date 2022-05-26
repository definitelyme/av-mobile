import 'dart:async';

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/core/domain/response/index.dart';
import 'package:auctionvillage/features/auth/domain/index.dart';
import 'package:auctionvillage/features/dashboard/data/repositories/utilities_repository.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'auth_watcher_cubit.freezed.dart';
part 'auth_watcher_state.dart';

typedef Task = void Function(Either<Failure, Option<User?>> either);

@singleton
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  StreamSubscription<Either<Failure, Option<User?>>>? _authStateChanges;
  final AuthFacade _facade;
  final UtilitiesRepository _utilities;

  StreamSubscription<Option<User?>>? _userChanges;

  AuthWatcherCubit(this._facade, this._utilities) : super(AuthWatcherState.initial());

  @override
  Future<void> close() async {
    await unsubscribeAuthChanges;
    await unsubscribeUserChanges;
    return super.close();
  }

  Future<void> get unsubscribeAuthChanges async => await _authStateChanges?.cancel();

  Future<void> get unsubscribeUserChanges async => await _userChanges?.cancel();

  void toggleLoading([bool? isLoading]) => emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void toggleLogoutLoading([bool? value]) => emit(state.copyWith(isLoggingOut: value ?? !state.isLoggingOut));

  Country? get defaultCountry => state.countries.firstOrNull((e) => e.iso.getOrNull?.toLowerCase() == Country.defaultISO.toLowerCase());

  Future<void> subscribeToAuthChanges(Task actions) async {
    toggleLoading(true);

    // Get current user
    final _req = await _facade.currentUser;

    // await signOut();

    // Cancel previous subscription
    await unsubscribeAuthChanges;

    // Start new subsrciption
    _authStateChanges ??= _facade.onAuthStateChanges.listen((data) {
      _mapResponse(data, isListeningForAuthChanges: true);

      actions.call(data);

      toggleLoading(false);
    });

    _mapResponse(_req);

    // Only if user is authenticated, then fetch user data (called once!)
    await _req.fold(
      (f) async => f.fold(
        is4031: () async => await _facade.sink(),
        is41101: () async => await _facade.sink(),
        orElse: () => null,
      ),
      (_) async => await _facade.sink(),
    );

    toggleLoading(false);
  }

  Future<void> subscribeUserChanges() async {
    toggleLoading(true);

    await unsubscribeUserChanges;

    _userChanges ??= _facade.onUserChanges.listen((option) {
      final _user = option.getOrElse(() => null);

      emit(state.copyWith(
        isListeningForUserChanges: true,
        isAuthenticated: _user != null,
        user: _user,
        option: optionOf(_user),
        status: none(),
      ));
    });

    toggleLoading(false);
  }

  Future<void> signOut() async {
    toggleLogoutLoading(true);

    await _facade.signOut();

    toggleLogoutLoading(false);

    emit(state.copyWith(
      isAuthenticated: false,
      user: null,
      option: none(),
      status: none(),
    ));
  }

  void getCountries(BuildContext context) async {
    final _countries = await _utilities.countries(context);
    emit(state.copyWith(countries: _countries));
  }

  void _mapResponse(
    Either<AppHttpResponse, Option<User?>> response, {
    bool? isListeningForAuthChanges,
  }) {
    final option = response.getOrElse(() => none());
    final _user = option.getOrElse(() => null);

    if (isListeningForAuthChanges != null) emit(state.copyWith(isListeningForAuthChanges: true));

    response.fold(
      (httpResponse) {
        if (httpResponse.reason != AppNetworkExceptionReason.timedOut)
          emit(state.copyWith(
            isAuthenticated: _user != null,
            user: _user,
            option: optionOf(_user),
            status: optionOf(httpResponse),
          ));
        emit(state.copyWith(status: optionOf(httpResponse)));
      },
      (_) {
        emit(state.copyWith(
          isAuthenticated: _user != null,
          user: _user,
          option: option,
          status: none(),
        ));
      },
    );
  }
}
