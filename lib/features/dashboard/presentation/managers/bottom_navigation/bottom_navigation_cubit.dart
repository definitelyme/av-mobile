library bottom_navigation_cubit.dart;

import 'package:auctionvillage/core/data/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/pages/index.dart';
import 'package:auctionvillage/utils/utils.dart' as util;
import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bottom_navigation_cubit.freezed.dart';
part 'bottom_navigation_state.dart';

@singleton
class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  static const String _kTabPersistKey = 'persisted-bottom-tab';

  BottomNavigationCubit() : super(BottomNavigationState.initial());

  void initAutoTabRouter() {
    final _index = HiveClient.tabNavBox?.get(_kTabPersistKey, defaultValue: 0);
    emit(state.copyWith(currentIndex: _index ?? state.currentIndex, previousIndex: _index ?? state.previousIndex));
  }

  void reset() => emit(BottomNavigationState.initial());

  void setCurrentIndex(TabsRouter tabsRouter, [int? index]) {
    final _index = index ?? state.currentIndex;
    emit(state.copyWith(previousIndex: state.currentIndex, currentIndex: _index));
    HiveClient.tabNavBox?.put(_kTabPersistKey, _index);
    tabsRouter.setActiveIndex(_index);
  }

  void setPreviousIndex(int index) => emit(state.copyWith(previousIndex: index));
}
