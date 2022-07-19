library root_cubit.dart;

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:auctionvillage/core/data/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_cubit.freezed.dart';
part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit._() : super(RootState.initial());

  static final _instance = RootCubit._();

  static RootCubit get instance => _instance;

  void updateStatus(AppHttpResponse? status) {
    emit(state.copyWith(status: optionOf(status)));
    emit(state.copyWith(status: none()));
  }
}
