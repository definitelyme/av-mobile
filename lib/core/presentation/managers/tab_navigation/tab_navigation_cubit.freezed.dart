// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of tab_navigation_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TabNavigationState {
  TabController? get tabController => throw _privateConstructorUsedError;
  TabsRouter? get tabRouter => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get previousIndex => throw _privateConstructorUsedError;
  int get selectedTab => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;
  Set<Map<String, Widget>> get tabs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabNavigationStateCopyWith<TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabNavigationStateCopyWith<$Res> {
  factory $TabNavigationStateCopyWith(
          TabNavigationState value, $Res Function(TabNavigationState) then) =
      _$TabNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {TabController? tabController,
      TabsRouter? tabRouter,
      int currentIndex,
      int previousIndex,
      int selectedTab,
      bool isLoading,
      bool isInit,
      Set<Map<String, Widget>> tabs});
}

/// @nodoc
class _$TabNavigationStateCopyWithImpl<$Res>
    implements $TabNavigationStateCopyWith<$Res> {
  _$TabNavigationStateCopyWithImpl(this._value, this._then);

  final TabNavigationState _value;
  // ignore: unused_field
  final $Res Function(TabNavigationState) _then;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? tabRouter = freezed,
    Object? currentIndex = freezed,
    Object? previousIndex = freezed,
    Object? selectedTab = freezed,
    Object? isLoading = freezed,
    Object? isInit = freezed,
    Object? tabs = freezed,
  }) {
    return _then(_value.copyWith(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      tabRouter: tabRouter == freezed
          ? _value.tabRouter
          : tabRouter // ignore: cast_nullable_to_non_nullable
              as TabsRouter?,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      previousIndex: previousIndex == freezed
          ? _value.previousIndex
          : previousIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInit: isInit == freezed
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
      tabs: tabs == freezed
          ? _value.tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as Set<Map<String, Widget>>,
    ));
  }
}

/// @nodoc
abstract class _$$_TabNavigationStateCopyWith<$Res>
    implements $TabNavigationStateCopyWith<$Res> {
  factory _$$_TabNavigationStateCopyWith(_$_TabNavigationState value,
          $Res Function(_$_TabNavigationState) then) =
      __$$_TabNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TabController? tabController,
      TabsRouter? tabRouter,
      int currentIndex,
      int previousIndex,
      int selectedTab,
      bool isLoading,
      bool isInit,
      Set<Map<String, Widget>> tabs});
}

/// @nodoc
class __$$_TabNavigationStateCopyWithImpl<$Res>
    extends _$TabNavigationStateCopyWithImpl<$Res>
    implements _$$_TabNavigationStateCopyWith<$Res> {
  __$$_TabNavigationStateCopyWithImpl(
      _$_TabNavigationState _value, $Res Function(_$_TabNavigationState) _then)
      : super(_value, (v) => _then(v as _$_TabNavigationState));

  @override
  _$_TabNavigationState get _value => super._value as _$_TabNavigationState;

  @override
  $Res call({
    Object? tabController = freezed,
    Object? tabRouter = freezed,
    Object? currentIndex = freezed,
    Object? previousIndex = freezed,
    Object? selectedTab = freezed,
    Object? isLoading = freezed,
    Object? isInit = freezed,
    Object? tabs = freezed,
  }) {
    return _then(_$_TabNavigationState(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      tabRouter: tabRouter == freezed
          ? _value.tabRouter
          : tabRouter // ignore: cast_nullable_to_non_nullable
              as TabsRouter?,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      previousIndex: previousIndex == freezed
          ? _value.previousIndex
          : previousIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInit: isInit == freezed
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
      tabs: tabs == freezed
          ? _value._tabs
          : tabs // ignore: cast_nullable_to_non_nullable
              as Set<Map<String, Widget>>,
    ));
  }
}

/// @nodoc

class _$_TabNavigationState implements _TabNavigationState {
  const _$_TabNavigationState(
      {this.tabController,
      this.tabRouter,
      this.currentIndex = 0,
      this.previousIndex = 0,
      this.selectedTab = 0,
      this.isLoading = false,
      this.isInit = true,
      required final Set<Map<String, Widget>> tabs})
      : _tabs = tabs;

  @override
  final TabController? tabController;
  @override
  final TabsRouter? tabRouter;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int previousIndex;
  @override
  @JsonKey()
  final int selectedTab;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isInit;
  final Set<Map<String, Widget>> _tabs;
  @override
  Set<Map<String, Widget>> get tabs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_tabs);
  }

  @override
  String toString() {
    return 'TabNavigationState(tabController: $tabController, tabRouter: $tabRouter, currentIndex: $currentIndex, previousIndex: $previousIndex, selectedTab: $selectedTab, isLoading: $isLoading, isInit: $isInit, tabs: $tabs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabNavigationState &&
            const DeepCollectionEquality()
                .equals(other.tabController, tabController) &&
            const DeepCollectionEquality().equals(other.tabRouter, tabRouter) &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality()
                .equals(other.previousIndex, previousIndex) &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isInit, isInit) &&
            const DeepCollectionEquality().equals(other._tabs, _tabs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tabController),
      const DeepCollectionEquality().hash(tabRouter),
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(previousIndex),
      const DeepCollectionEquality().hash(selectedTab),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isInit),
      const DeepCollectionEquality().hash(_tabs));

  @JsonKey(ignore: true)
  @override
  _$$_TabNavigationStateCopyWith<_$_TabNavigationState> get copyWith =>
      __$$_TabNavigationStateCopyWithImpl<_$_TabNavigationState>(
          this, _$identity);
}

abstract class _TabNavigationState implements TabNavigationState {
  const factory _TabNavigationState(
      {final TabController? tabController,
      final TabsRouter? tabRouter,
      final int currentIndex,
      final int previousIndex,
      final int selectedTab,
      final bool isLoading,
      final bool isInit,
      required final Set<Map<String, Widget>> tabs}) = _$_TabNavigationState;

  @override
  TabController? get tabController => throw _privateConstructorUsedError;
  @override
  TabsRouter? get tabRouter => throw _privateConstructorUsedError;
  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  int get previousIndex => throw _privateConstructorUsedError;
  @override
  int get selectedTab => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isInit => throw _privateConstructorUsedError;
  @override
  Set<Map<String, Widget>> get tabs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TabNavigationStateCopyWith<_$_TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
