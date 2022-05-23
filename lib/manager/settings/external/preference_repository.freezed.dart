// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of preference_repository.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreferenceRepository {
  SharedPreferences get preferences => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferenceRepositoryCopyWith<PreferenceRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceRepositoryCopyWith<$Res> {
  factory $PreferenceRepositoryCopyWith(PreferenceRepository value,
          $Res Function(PreferenceRepository) then) =
      _$PreferenceRepositoryCopyWithImpl<$Res>;
  $Res call({SharedPreferences preferences});
}

/// @nodoc
class _$PreferenceRepositoryCopyWithImpl<$Res>
    implements $PreferenceRepositoryCopyWith<$Res> {
  _$PreferenceRepositoryCopyWithImpl(this._value, this._then);

  final PreferenceRepository _value;
  // ignore: unused_field
  final $Res Function(PreferenceRepository) _then;

  @override
  $Res call({
    Object? preferences = freezed,
  }) {
    return _then(_value.copyWith(
      preferences: preferences == freezed
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
    ));
  }
}

/// @nodoc
abstract class _$$_PreferenceRepositoryCopyWith<$Res>
    implements $PreferenceRepositoryCopyWith<$Res> {
  factory _$$_PreferenceRepositoryCopyWith(_$_PreferenceRepository value,
          $Res Function(_$_PreferenceRepository) then) =
      __$$_PreferenceRepositoryCopyWithImpl<$Res>;
  @override
  $Res call({SharedPreferences preferences});
}

/// @nodoc
class __$$_PreferenceRepositoryCopyWithImpl<$Res>
    extends _$PreferenceRepositoryCopyWithImpl<$Res>
    implements _$$_PreferenceRepositoryCopyWith<$Res> {
  __$$_PreferenceRepositoryCopyWithImpl(_$_PreferenceRepository _value,
      $Res Function(_$_PreferenceRepository) _then)
      : super(_value, (v) => _then(v as _$_PreferenceRepository));

  @override
  _$_PreferenceRepository get _value => super._value as _$_PreferenceRepository;

  @override
  $Res call({
    Object? preferences = freezed,
  }) {
    return _then(_$_PreferenceRepository(
      preferences == freezed
          ? _value.preferences
          : preferences // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
    ));
  }
}

/// @nodoc

@factoryMethod
class _$_PreferenceRepository extends _PreferenceRepository
    with DiagnosticableTreeMixin {
  const _$_PreferenceRepository(this.preferences) : super._();

  @override
  final SharedPreferences preferences;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreferenceRepository(preferences: $preferences)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreferenceRepository'))
      ..add(DiagnosticsProperty('preferences', preferences));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferenceRepository &&
            const DeepCollectionEquality()
                .equals(other.preferences, preferences));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(preferences));

  @JsonKey(ignore: true)
  @override
  _$$_PreferenceRepositoryCopyWith<_$_PreferenceRepository> get copyWith =>
      __$$_PreferenceRepositoryCopyWithImpl<_$_PreferenceRepository>(
          this, _$identity);
}

abstract class _PreferenceRepository extends PreferenceRepository {
  const factory _PreferenceRepository(final SharedPreferences preferences) =
      _$_PreferenceRepository;
  const _PreferenceRepository._() : super._();

  @override
  SharedPreferences get preferences => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PreferenceRepositoryCopyWith<_$_PreferenceRepository> get copyWith =>
      throw _privateConstructorUsedError;
}
