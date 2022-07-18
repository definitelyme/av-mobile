// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bottom_navigation_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationState {
  TabsRouter? get tabRouter => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  int get previousIndex => throw _privateConstructorUsedError;
  bool get hasActiveListener => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
  $Res call(
      {TabsRouter? tabRouter,
      int currentIndex,
      int previousIndex,
      bool hasActiveListener});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;

  @override
  $Res call({
    Object? tabRouter = freezed,
    Object? currentIndex = freezed,
    Object? previousIndex = freezed,
    Object? hasActiveListener = freezed,
  }) {
    return _then(_value.copyWith(
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
      hasActiveListener: hasActiveListener == freezed
          ? _value.hasActiveListener
          : hasActiveListener // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_BottomNavigationStateCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$_BottomNavigationStateCopyWith(_$_BottomNavigationState value,
          $Res Function(_$_BottomNavigationState) then) =
      __$$_BottomNavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TabsRouter? tabRouter,
      int currentIndex,
      int previousIndex,
      bool hasActiveListener});
}

/// @nodoc
class __$$_BottomNavigationStateCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$$_BottomNavigationStateCopyWith<$Res> {
  __$$_BottomNavigationStateCopyWithImpl(_$_BottomNavigationState _value,
      $Res Function(_$_BottomNavigationState) _then)
      : super(_value, (v) => _then(v as _$_BottomNavigationState));

  @override
  _$_BottomNavigationState get _value =>
      super._value as _$_BottomNavigationState;

  @override
  $Res call({
    Object? tabRouter = freezed,
    Object? currentIndex = freezed,
    Object? previousIndex = freezed,
    Object? hasActiveListener = freezed,
  }) {
    return _then(_$_BottomNavigationState(
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
      hasActiveListener: hasActiveListener == freezed
          ? _value.hasActiveListener
          : hasActiveListener // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationState implements _BottomNavigationState {
  const _$_BottomNavigationState(
      {this.tabRouter,
      this.currentIndex = BottomNavigationState.homeIndex,
      this.previousIndex = BottomNavigationState.homeIndex,
      this.hasActiveListener = false});

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
  final bool hasActiveListener;

  @override
  String toString() {
    return 'BottomNavigationState(tabRouter: $tabRouter, currentIndex: $currentIndex, previousIndex: $previousIndex, hasActiveListener: $hasActiveListener)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationState &&
            const DeepCollectionEquality().equals(other.tabRouter, tabRouter) &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality()
                .equals(other.previousIndex, previousIndex) &&
            const DeepCollectionEquality()
                .equals(other.hasActiveListener, hasActiveListener));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tabRouter),
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(previousIndex),
      const DeepCollectionEquality().hash(hasActiveListener));

  @JsonKey(ignore: true)
  @override
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      __$$_BottomNavigationStateCopyWithImpl<_$_BottomNavigationState>(
          this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  const factory _BottomNavigationState(
      {final TabsRouter? tabRouter,
      final int currentIndex,
      final int previousIndex,
      final bool hasActiveListener}) = _$_BottomNavigationState;

  @override
  TabsRouter? get tabRouter;
  @override
  int get currentIndex;
  @override
  int get previousIndex;
  @override
  bool get hasActiveListener;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationStateCopyWith<_$_BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
