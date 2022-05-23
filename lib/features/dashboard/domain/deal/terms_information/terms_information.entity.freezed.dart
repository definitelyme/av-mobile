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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_TermsInformationCopyWith<$Res>
    implements $TermsInformationCopyWith<$Res> {
  factory _$$_TermsInformationCopyWith(
          _$_TermsInformation value, $Res Function(_$_TermsInformation) then) =
      __$$_TermsInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField<String?> yearOfPurchase,
      bool hasRepairHistory,
      bool hasRefundPolicy,
      BasicTextField<String?> warranty,
      BasicTextField<String?> otherInformation});
}

/// @nodoc
class __$$_TermsInformationCopyWithImpl<$Res>
    extends _$TermsInformationCopyWithImpl<$Res>
    implements _$$_TermsInformationCopyWith<$Res> {
  __$$_TermsInformationCopyWithImpl(
      _$_TermsInformation _value, $Res Function(_$_TermsInformation) _then)
      : super(_value, (v) => _then(v as _$_TermsInformation));

  @override
  _$_TermsInformation get _value => super._value as _$_TermsInformation;

  @override
  $Res call({
    Object? yearOfPurchase = freezed,
    Object? hasRepairHistory = freezed,
    Object? hasRefundPolicy = freezed,
    Object? warranty = freezed,
    Object? otherInformation = freezed,
  }) {
    return _then(_$_TermsInformation(
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
  @override
  @JsonKey()
  final bool hasRepairHistory;
  @override
  @JsonKey()
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
            other is _$_TermsInformation &&
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
  _$$_TermsInformationCopyWith<_$_TermsInformation> get copyWith =>
      __$$_TermsInformationCopyWithImpl<_$_TermsInformation>(this, _$identity);
}

abstract class _TermsInformation extends TermsInformation {
  const factory _TermsInformation(
          {required final BasicTextField<String?> yearOfPurchase,
          final bool hasRepairHistory,
          final bool hasRefundPolicy,
          required final BasicTextField<String?> warranty,
          required final BasicTextField<String?> otherInformation}) =
      _$_TermsInformation;
  const _TermsInformation._() : super._();

  @override
  BasicTextField<String?> get yearOfPurchase =>
      throw _privateConstructorUsedError;
  @override
  bool get hasRepairHistory => throw _privateConstructorUsedError;
  @override
  bool get hasRefundPolicy => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get warranty => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get otherInformation =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TermsInformationCopyWith<_$_TermsInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
