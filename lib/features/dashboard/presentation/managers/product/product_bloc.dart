library product_bloc.dart;

import 'dart:async';

import 'package:auctionvillage/core/data/models/index.dart';
import 'package:auctionvillage/core/data/response/index.dart';
import 'package:auctionvillage/core/presentation/index.dart';
import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.initial()) {
    on<_ProductEmiiterEvent>((event, emit) {
      emit(event.state);
      event.callback?.call(true);
    }, transformer: sequential());
    //
    on<ProductPageControllerEvent>((event, emit) async {
      await event.map(
        attachListener: (_) async => _attachControllerListener(emit),
        next: (e) async => _next(e, emit),
        prev: (_) async => _prev(emit),
      );
    }, transformer: restartable());
  }

  Future<void> _asyncHandler<Evt>(
    Evt event,
    Emitter<ProductState> emit, {
    bool clearStatus = true,
    ProductState Function(ProductState)? before,
    ProductState Function(ProductState)? after,
    bool Function(Evt, Emitter<ProductState>)? beforeRun,
    FutureOr<void> Function(Evt, Emitter<ProductState>)? runnable,
    void Function(Evt, Emitter<ProductState>)? afterRun,
  }) async {
    final _res = beforeRun?.call(event, emit) ?? true;

    if (_res) {
      if (before != null)
        emit(before.call(state.copyWith(
            isLoading: true, status: clearStatus ? none() : state.status)));
      else
        emit(state.copyWith(
            isLoading: true, status: clearStatus ? none() : state.status));

      if (runnable != null) await runnable.call(event, emit);

      if (after != null)
        emit(after.call(state.copyWith(isLoading: false)));
      else
        emit(state.copyWith(isLoading: false));

      afterRun?.call(event, emit);
    }
  }

  bool isLast<T>(List<T> items, int index) => index == items.length - 1;

  bool isFirst(int index) => index == 0;

  void _next(_OnNextPage e, Emitter<ProductState> emit) async {
    if (state.currentIndex != e.items.length - 1) {
      await state.controller.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
      emit(state.copyWith(controller: state.controller));
    }
  }

  void _prev(Emitter<ProductState> emit) async {
    if (state.currentIndex != 0) {
      await state.controller.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
      emit(state.copyWith(controller: state.controller));
    }
  }

  void _attachControllerListener(Emitter<ProductState> emit) =>
      state.controller.addListener(() => _pageControllerListener(emit));

  void _pageControllerListener(Emitter<ProductState>? emit) {
    if (emit == null) return;

    if (state.controller.page != null &&
        state.controller.page?.round() != state.currentIndex) {
      add(_ProductEmiiterEvent(
          state.copyWith(currentIndex: state.controller.page!.round())));
    }
  }

  @override
  Future<void> close() {
    state.controller.removeListener(() => _pageControllerListener(null));
    state.controller.dispose();
    return super.close();
  }
}
