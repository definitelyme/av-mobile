// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceOpeningHours {
  bool? get openNow => throw _privateConstructorUsedError;
  KtList<PlaceOpeningPeriod> get periods => throw _privateConstructorUsedError;
  KtList<BasicTextField?> get weekdayText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOpeningHoursCopyWith<PlaceOpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOpeningHoursCopyWith<$Res> {
  factory $PlaceOpeningHoursCopyWith(
          PlaceOpeningHours value, $Res Function(PlaceOpeningHours) then) =
      _$PlaceOpeningHoursCopyWithImpl<$Res>;
  $Res call(
      {bool? openNow,
      KtList<PlaceOpeningPeriod> periods,
      KtList<BasicTextField?> weekdayText});
}

/// @nodoc
class _$PlaceOpeningHoursCopyWithImpl<$Res>
    implements $PlaceOpeningHoursCopyWith<$Res> {
  _$PlaceOpeningHoursCopyWithImpl(this._value, this._then);

  final PlaceOpeningHours _value;
  // ignore: unused_field
  final $Res Function(PlaceOpeningHours) _then;

  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_value.copyWith(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: periods == freezed
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as KtList<PlaceOpeningPeriod>,
      weekdayText: weekdayText == freezed
          ? _value.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as KtList<BasicTextField?>,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceOpeningHoursCopyWith<$Res>
    implements $PlaceOpeningHoursCopyWith<$Res> {
  factory _$$_PlaceOpeningHoursCopyWith(_$_PlaceOpeningHours value,
          $Res Function(_$_PlaceOpeningHours) then) =
      __$$_PlaceOpeningHoursCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? openNow,
      KtList<PlaceOpeningPeriod> periods,
      KtList<BasicTextField?> weekdayText});
}

/// @nodoc
class __$$_PlaceOpeningHoursCopyWithImpl<$Res>
    extends _$PlaceOpeningHoursCopyWithImpl<$Res>
    implements _$$_PlaceOpeningHoursCopyWith<$Res> {
  __$$_PlaceOpeningHoursCopyWithImpl(
      _$_PlaceOpeningHours _value, $Res Function(_$_PlaceOpeningHours) _then)
      : super(_value, (v) => _then(v as _$_PlaceOpeningHours));

  @override
  _$_PlaceOpeningHours get _value => super._value as _$_PlaceOpeningHours;

  @override
  $Res call({
    Object? openNow = freezed,
    Object? periods = freezed,
    Object? weekdayText = freezed,
  }) {
    return _then(_$_PlaceOpeningHours(
      openNow: openNow == freezed
          ? _value.openNow
          : openNow // ignore: cast_nullable_to_non_nullable
              as bool?,
      periods: periods == freezed
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as KtList<PlaceOpeningPeriod>,
      weekdayText: weekdayText == freezed
          ? _value.weekdayText
          : weekdayText // ignore: cast_nullable_to_non_nullable
              as KtList<BasicTextField?>,
    ));
  }
}

/// @nodoc

class _$_PlaceOpeningHours
    with DiagnosticableTreeMixin
    implements _PlaceOpeningHours {
  const _$_PlaceOpeningHours(
      {this.openNow,
      this.periods = const KtList.empty(),
      this.weekdayText = const KtList.empty()});

  @override
  final bool? openNow;
  @override
  @JsonKey()
  final KtList<PlaceOpeningPeriod> periods;
  @override
  @JsonKey()
  final KtList<BasicTextField?> weekdayText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOpeningHours(openNow: $openNow, periods: $periods, weekdayText: $weekdayText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOpeningHours'))
      ..add(DiagnosticsProperty('openNow', openNow))
      ..add(DiagnosticsProperty('periods', periods))
      ..add(DiagnosticsProperty('weekdayText', weekdayText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceOpeningHours &&
            const DeepCollectionEquality().equals(other.openNow, openNow) &&
            const DeepCollectionEquality().equals(other.periods, periods) &&
            const DeepCollectionEquality()
                .equals(other.weekdayText, weekdayText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(openNow),
      const DeepCollectionEquality().hash(periods),
      const DeepCollectionEquality().hash(weekdayText));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceOpeningHoursCopyWith<_$_PlaceOpeningHours> get copyWith =>
      __$$_PlaceOpeningHoursCopyWithImpl<_$_PlaceOpeningHours>(
          this, _$identity);
}

abstract class _PlaceOpeningHours implements PlaceOpeningHours {
  const factory _PlaceOpeningHours(
      {final bool? openNow,
      final KtList<PlaceOpeningPeriod> periods,
      final KtList<BasicTextField?> weekdayText}) = _$_PlaceOpeningHours;

  @override
  bool? get openNow;
  @override
  KtList<PlaceOpeningPeriod> get periods;
  @override
  KtList<BasicTextField?> get weekdayText;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceOpeningHoursCopyWith<_$_PlaceOpeningHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceOpeningPeriod {
  PlaceHours? get close => throw _privateConstructorUsedError;
  PlaceHours? get open => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceOpeningPeriodCopyWith<PlaceOpeningPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOpeningPeriodCopyWith<$Res> {
  factory $PlaceOpeningPeriodCopyWith(
          PlaceOpeningPeriod value, $Res Function(PlaceOpeningPeriod) then) =
      _$PlaceOpeningPeriodCopyWithImpl<$Res>;
  $Res call({PlaceHours? close, PlaceHours? open});

  $PlaceHoursCopyWith<$Res>? get close;
  $PlaceHoursCopyWith<$Res>? get open;
}

/// @nodoc
class _$PlaceOpeningPeriodCopyWithImpl<$Res>
    implements $PlaceOpeningPeriodCopyWith<$Res> {
  _$PlaceOpeningPeriodCopyWithImpl(this._value, this._then);

  final PlaceOpeningPeriod _value;
  // ignore: unused_field
  final $Res Function(PlaceOpeningPeriod) _then;

  @override
  $Res call({
    Object? close = freezed,
    Object? open = freezed,
  }) {
    return _then(_value.copyWith(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
    ));
  }

  @override
  $PlaceHoursCopyWith<$Res>? get close {
    if (_value.close == null) {
      return null;
    }

    return $PlaceHoursCopyWith<$Res>(_value.close!, (value) {
      return _then(_value.copyWith(close: value));
    });
  }

  @override
  $PlaceHoursCopyWith<$Res>? get open {
    if (_value.open == null) {
      return null;
    }

    return $PlaceHoursCopyWith<$Res>(_value.open!, (value) {
      return _then(_value.copyWith(open: value));
    });
  }
}

/// @nodoc
abstract class _$$_PlaceOpeningPeriodCopyWith<$Res>
    implements $PlaceOpeningPeriodCopyWith<$Res> {
  factory _$$_PlaceOpeningPeriodCopyWith(_$_PlaceOpeningPeriod value,
          $Res Function(_$_PlaceOpeningPeriod) then) =
      __$$_PlaceOpeningPeriodCopyWithImpl<$Res>;
  @override
  $Res call({PlaceHours? close, PlaceHours? open});

  @override
  $PlaceHoursCopyWith<$Res>? get close;
  @override
  $PlaceHoursCopyWith<$Res>? get open;
}

/// @nodoc
class __$$_PlaceOpeningPeriodCopyWithImpl<$Res>
    extends _$PlaceOpeningPeriodCopyWithImpl<$Res>
    implements _$$_PlaceOpeningPeriodCopyWith<$Res> {
  __$$_PlaceOpeningPeriodCopyWithImpl(
      _$_PlaceOpeningPeriod _value, $Res Function(_$_PlaceOpeningPeriod) _then)
      : super(_value, (v) => _then(v as _$_PlaceOpeningPeriod));

  @override
  _$_PlaceOpeningPeriod get _value => super._value as _$_PlaceOpeningPeriod;

  @override
  $Res call({
    Object? close = freezed,
    Object? open = freezed,
  }) {
    return _then(_$_PlaceOpeningPeriod(
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as PlaceHours?,
    ));
  }
}

/// @nodoc

class _$_PlaceOpeningPeriod
    with DiagnosticableTreeMixin
    implements _PlaceOpeningPeriod {
  const _$_PlaceOpeningPeriod({this.close, this.open});

  @override
  final PlaceHours? close;
  @override
  final PlaceHours? open;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceOpeningPeriod(close: $close, open: $open)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceOpeningPeriod'))
      ..add(DiagnosticsProperty('close', close))
      ..add(DiagnosticsProperty('open', open));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceOpeningPeriod &&
            const DeepCollectionEquality().equals(other.close, close) &&
            const DeepCollectionEquality().equals(other.open, open));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(close),
      const DeepCollectionEquality().hash(open));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceOpeningPeriodCopyWith<_$_PlaceOpeningPeriod> get copyWith =>
      __$$_PlaceOpeningPeriodCopyWithImpl<_$_PlaceOpeningPeriod>(
          this, _$identity);
}

abstract class _PlaceOpeningPeriod implements PlaceOpeningPeriod {
  const factory _PlaceOpeningPeriod(
      {final PlaceHours? close,
      final PlaceHours? open}) = _$_PlaceOpeningPeriod;

  @override
  PlaceHours? get close;
  @override
  PlaceHours? get open;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceOpeningPeriodCopyWith<_$_PlaceOpeningPeriod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceHours {
  NumField<int?>? get day => throw _privateConstructorUsedError;
  BasicTextField? get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceHoursCopyWith<PlaceHours> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceHoursCopyWith<$Res> {
  factory $PlaceHoursCopyWith(
          PlaceHours value, $Res Function(PlaceHours) then) =
      _$PlaceHoursCopyWithImpl<$Res>;
  $Res call({NumField<int?>? day, BasicTextField? time});
}

/// @nodoc
class _$PlaceHoursCopyWithImpl<$Res> implements $PlaceHoursCopyWith<$Res> {
  _$PlaceHoursCopyWithImpl(this._value, this._then);

  final PlaceHours _value;
  // ignore: unused_field
  final $Res Function(PlaceHours) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as NumField<int?>?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as BasicTextField?,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceHoursCopyWith<$Res>
    implements $PlaceHoursCopyWith<$Res> {
  factory _$$_PlaceHoursCopyWith(
          _$_PlaceHours value, $Res Function(_$_PlaceHours) then) =
      __$$_PlaceHoursCopyWithImpl<$Res>;
  @override
  $Res call({NumField<int?>? day, BasicTextField? time});
}

/// @nodoc
class __$$_PlaceHoursCopyWithImpl<$Res> extends _$PlaceHoursCopyWithImpl<$Res>
    implements _$$_PlaceHoursCopyWith<$Res> {
  __$$_PlaceHoursCopyWithImpl(
      _$_PlaceHours _value, $Res Function(_$_PlaceHours) _then)
      : super(_value, (v) => _then(v as _$_PlaceHours));

  @override
  _$_PlaceHours get _value => super._value as _$_PlaceHours;

  @override
  $Res call({
    Object? day = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_PlaceHours(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as NumField<int?>?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as BasicTextField?,
    ));
  }
}

/// @nodoc

class _$_PlaceHours with DiagnosticableTreeMixin implements _PlaceHours {
  const _$_PlaceHours({this.day, this.time});

  @override
  final NumField<int?>? day;
  @override
  final BasicTextField? time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceHours(day: $day, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceHours'))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceHours &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceHoursCopyWith<_$_PlaceHours> get copyWith =>
      __$$_PlaceHoursCopyWithImpl<_$_PlaceHours>(this, _$identity);
}

abstract class _PlaceHours implements PlaceHours {
  const factory _PlaceHours(
      {final NumField<int?>? day, final BasicTextField? time}) = _$_PlaceHours;

  @override
  NumField<int?>? get day;
  @override
  BasicTextField? get time;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceHoursCopyWith<_$_PlaceHours> get copyWith =>
      throw _privateConstructorUsedError;
}
