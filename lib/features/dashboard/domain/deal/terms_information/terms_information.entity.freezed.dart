// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of terms_information.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TermsInformationTearOff {
  const _$TermsInformationTearOff();

  _TermsInformation call(
      {required BasicTextField<String?> yearOfPurchase,
      bool hasRepairHistory = false,
      bool hasRefundPolicy = false,
      required BasicTextField<String?> warranty,
      required BasicTextField<String?> otherInformation}) {
    return _TermsInformation(
      yearOfPurchase: yearOfPurchase,
      hasRepairHistory: hasRepairHistory,
      hasRefundPolicy: hasRefundPolicy,
      warranty: warranty,
      otherInformation: otherInformation,
    );
  }
}

/// @nodoc
const $TermsInformation = _$TermsInformationTearOff();

/// @nodoc
mixin _$TermsInformation {
  BasicTextField<String?> get yearOfPurchase =>
      throw _privateConstructorUsedError;
  bool get hasRepairHistory => throw _privateConstructorUsedError;
  bool get hasRefundPolicy => throw _privateConstructorUsedError;
  BasicTextField<String?> get warranty => throw _privateConstructorUsedError;
  BasicTextField<String?> get otherInformation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsInformationCopyWith<TermsInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsInformationCopyWith<$Res> {
  factory $TermsInformationCopyWith(
          TermsInformation value, $Res Function(TermsInformation) then) =
      _$TermsInformationCopyWithImpl<$Res>;
  $Res call(
      {BasicTextField<String?> yearOfPurchase,
      bool hasRepairHistory,
      bool hasRefundPolicy,
      BasicTextField<String?> warranty,
      BasicTextField<String?> otherInformation});
}

/// @nodoc
class _$TermsInformationCopyWithImpl<$Res>
    implements $TermsInformationCopyWith<$Res> {
  _$TermsInformationCopyWithImpl(this._value, this._then);

  final TermsInformation _value;
  // ignore: unused_field
  final $Res Function(TermsInformation) _then;

  @override
  $Res call({
    Object? yearOfPurchase = freezed,
    Object? hasRepairHistory = freezed,
    Object? hasRefundPolicy = freezed,
    Object? warranty = freezed,
    Object? otherInformation = freezed,
  }) {
    return _then(_value.copyWith(
      yearOfPurchase: yearOfPurchase == freezed
          ? _value.yearOfPurchase
          : yearOfPurchase // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      hasRepairHistory: hasRepairHistory == freezed
          ? _value.hasRepairHistory
          : hasRepairHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRefundPolicy: hasRefundPolicy == freezed
          ? _value.hasRefundPolicy
          : hasRefundPolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      warranty: warranty == freezed
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      otherInformation: otherInformation == freezed
          ? _value.otherInformation
          : otherInformation // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
    ));
  }
}

/// @nodoc
abstract class _$TermsInformationCopyWith<$Res>
    implements $TermsInformationCopyWith<$Res> {
  factory _$TermsInformationCopyWith(
          _TermsInformation value, $Res Function(_TermsInformation) then) =
      __$TermsInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField<String?> yearOfPurchase,
      bool hasRepairHistory,
      bool hasRefundPolicy,
      BasicTextField<String?> warranty,
      BasicTextField<String?> otherInformation});
}

/// @nodoc
class __$TermsInformationCopyWithImpl<$Res>
    extends _$TermsInformationCopyWithImpl<$Res>
    implements _$TermsInformationCopyWith<$Res> {
  __$TermsInformationCopyWithImpl(
      _TermsInformation _value, $Res Function(_TermsInformation) _then)
      : super(_value, (v) => _then(v as _TermsInformation));

  @override
  _TermsInformation get _value => super._value as _TermsInformation;

  @override
  $Res call({
    Object? yearOfPurchase = freezed,
    Object? hasRepairHistory = freezed,
    Object? hasRefundPolicy = freezed,
    Object? warranty = freezed,
    Object? otherInformation = freezed,
  }) {
    return _then(_TermsInformation(
      yearOfPurchase: yearOfPurchase == freezed
          ? _value.yearOfPurchase
          : yearOfPurchase // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      hasRepairHistory: hasRepairHistory == freezed
          ? _value.hasRepairHistory
          : hasRepairHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRefundPolicy: hasRefundPolicy == freezed
          ? _value.hasRefundPolicy
          : hasRefundPolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      warranty: warranty == freezed
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      otherInformation: otherInformation == freezed
          ? _value.otherInformation
          : otherInformation // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
    ));
  }
}

/// @nodoc

class _$_TermsInformation extends _TermsInformation {
  const _$_TermsInformation(
      {required this.yearOfPurchase,
      this.hasRepairHistory = false,
      this.hasRefundPolicy = false,
      required this.warranty,
      required this.otherInformation})
      : super._();

  @override
  final BasicTextField<String?> yearOfPurchase;
  @JsonKey()
  @override
  final bool hasRepairHistory;
  @JsonKey()
  @override
  final bool hasRefundPolicy;
  @override
  final BasicTextField<String?> warranty;
  @override
  final BasicTextField<String?> otherInformation;

  @override
  String toString() {
    return 'TermsInformation(yearOfPurchase: $yearOfPurchase, hasRepairHistory: $hasRepairHistory, hasRefundPolicy: $hasRefundPolicy, warranty: $warranty, otherInformation: $otherInformation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TermsInformation &&
            const DeepCollectionEquality()
                .equals(other.yearOfPurchase, yearOfPurchase) &&
            const DeepCollectionEquality()
                .equals(other.hasRepairHistory, hasRepairHistory) &&
            const DeepCollectionEquality()
                .equals(other.hasRefundPolicy, hasRefundPolicy) &&
            const DeepCollectionEquality().equals(other.warranty, warranty) &&
            const DeepCollectionEquality()
                .equals(other.otherInformation, otherInformation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(yearOfPurchase),
      const DeepCollectionEquality().hash(hasRepairHistory),
      const DeepCollectionEquality().hash(hasRefundPolicy),
      const DeepCollectionEquality().hash(warranty),
      const DeepCollectionEquality().hash(otherInformation));

  @JsonKey(ignore: true)
  @override
  _$TermsInformationCopyWith<_TermsInformation> get copyWith =>
      __$TermsInformationCopyWithImpl<_TermsInformation>(this, _$identity);
}

abstract class _TermsInformation extends TermsInformation {
  const factory _TermsInformation(
      {required BasicTextField<String?> yearOfPurchase,
      bool hasRepairHistory,
      bool hasRefundPolicy,
      required BasicTextField<String?> warranty,
      required BasicTextField<String?> otherInformation}) = _$_TermsInformation;
  const _TermsInformation._() : super._();

  @override
  BasicTextField<String?> get yearOfPurchase;
  @override
  bool get hasRepairHistory;
  @override
  bool get hasRefundPolicy;
  @override
  BasicTextField<String?> get warranty;
  @override
  BasicTextField<String?> get otherInformation;
  @override
  @JsonKey(ignore: true)
  _$TermsInformationCopyWith<_TermsInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
