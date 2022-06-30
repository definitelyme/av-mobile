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
  int get selectedTab => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabNavigationStateCopyWith<TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabNavigationStateCopyWith<$Res> {
  factory $TabNavigationStateCopyWith(
          TabNavigationState value, $Res Function(TabNavigationState) then) =
      _$TabNavigationStateCopyWithImpl<$Res>;
  $Res call({TabController? tabController, int selectedTab, bool isLoading});
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
    Object? selectedTab = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({TabController? tabController, int selectedTab, bool isLoading});
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
    Object? selectedTab = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_TabNavigationState(
      tabController: tabController == freezed
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController?,
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TabNavigationState implements _TabNavigationState {
  const _$_TabNavigationState(
      {this.tabController, this.selectedTab = 0, this.isLoading = false});

  @override
  final TabController? tabController;
  @override
  @JsonKey()
  final int selectedTab;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TabNavigationState(tabController: $tabController, selectedTab: $selectedTab, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabNavigationState &&
            const DeepCollectionEquality()
                .equals(other.tabController, tabController) &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tabController),
      const DeepCollectionEquality().hash(selectedTab),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_TabNavigationStateCopyWith<_$_TabNavigationState> get copyWith =>
      __$$_TabNavigationStateCopyWithImpl<_$_TabNavigationState>(
          this, _$identity);
}

abstract class _TabNavigationState implements TabNavigationState {
  const factory _TabNavigationState(
      {final TabController? tabController,
      final int selectedTab,
      final bool isLoading}) = _$_TabNavigationState;

  @override
  TabController? get tabController => throw _privateConstructorUsedError;
  @override
  int get selectedTab => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TabNavigationStateCopyWith<_$_TabNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
