// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of terms_information_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermsInformationDTO _$TermsInformationDTOFromJson(Map<String, dynamic> json) {
  return _TermsInformationDTO.fromJson(json);
}

/// @nodoc
class _$TermsInformationDTOTearOff {
  const _$TermsInformationDTOTearOff();

  _TermsInformationDTO call(
      {int? yearOfPurchase,
      @BooleanSerializer() bool? repairHistory,
      @BooleanSerializer() bool? refundPolicy,
      @BooleanSerializer() bool? warranty}) {
    return _TermsInformationDTO(
      yearOfPurchase: yearOfPurchase,
      repairHistory: repairHistory,
      refundPolicy: refundPolicy,
      warranty: warranty,
    );
  }

  TermsInformationDTO fromJson(Map<String, Object?> json) {
    return TermsInformationDTO.fromJson(json);
  }
}

/// @nodoc
const $TermsInformationDTO = _$TermsInformationDTOTearOff();

/// @nodoc
mixin _$TermsInformationDTO {
  int? get yearOfPurchase => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get repairHistory => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get refundPolicy => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get warranty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsInformationDTOCopyWith<TermsInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsInformationDTOCopyWith<$Res> {
  factory $TermsInformationDTOCopyWith(
          TermsInformationDTO value, $Res Function(TermsInformationDTO) then) =
      _$TermsInformationDTOCopyWithImpl<$Res>;
  $Res call(
      {int? yearOfPurchase,
      @BooleanSerializer() bool? repairHistory,
      @BooleanSerializer() bool? refundPolicy,
      @BooleanSerializer() bool? warranty});
}

/// @nodoc
class _$TermsInformationDTOCopyWithImpl<$Res>
    implements $TermsInformationDTOCopyWith<$Res> {
  _$TermsInformationDTOCopyWithImpl(this._value, this._then);

  final TermsInformationDTO _value;
  // ignore: unused_field
  final $Res Function(TermsInformationDTO) _then;

  @override
  $Res call({
    Object? yearOfPurchase = freezed,
    Object? repairHistory = freezed,
    Object? refundPolicy = freezed,
    Object? warranty = freezed,
  }) {
    return _then(_value.copyWith(
      yearOfPurchase: yearOfPurchase == freezed
          ? _value.yearOfPurchase
          : yearOfPurchase // ignore: cast_nullable_to_non_nullable
              as int?,
      repairHistory: repairHistory == freezed
          ? _value.repairHistory
          : repairHistory // ignore: cast_nullable_to_non_nullable
              as bool?,
      refundPolicy: refundPolicy == freezed
          ? _value.refundPolicy
          : refundPolicy // ignore: cast_nullable_to_non_nullable
              as bool?,
      warranty: warranty == freezed
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$TermsInformationDTOCopyWith<$Res>
    implements $TermsInformationDTOCopyWith<$Res> {
  factory _$TermsInformationDTOCopyWith(_TermsInformationDTO value,
          $Res Function(_TermsInformationDTO) then) =
      __$TermsInformationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? yearOfPurchase,
      @BooleanSerializer() bool? repairHistory,
      @BooleanSerializer() bool? refundPolicy,
      @BooleanSerializer() bool? warranty});
}

/// @nodoc
class __$TermsInformationDTOCopyWithImpl<$Res>
    extends _$TermsInformationDTOCopyWithImpl<$Res>
    implements _$TermsInformationDTOCopyWith<$Res> {
  __$TermsInformationDTOCopyWithImpl(
      _TermsInformationDTO _value, $Res Function(_TermsInformationDTO) _then)
      : super(_value, (v) => _then(v as _TermsInformationDTO));

  @override
  _TermsInformationDTO get _value => super._value as _TermsInformationDTO;

  @override
  $Res call({
    Object? yearOfPurchase = freezed,
    Object? repairHistory = freezed,
    Object? refundPolicy = freezed,
    Object? warranty = freezed,
  }) {
    return _then(_TermsInformationDTO(
      yearOfPurchase: yearOfPurchase == freezed
          ? _value.yearOfPurchase
          : yearOfPurchase // ignore: cast_nullable_to_non_nullable
              as int?,
      repairHistory: repairHistory == freezed
          ? _value.repairHistory
          : repairHistory // ignore: cast_nullable_to_non_nullable
              as bool?,
      refundPolicy: refundPolicy == freezed
          ? _value.refundPolicy
          : refundPolicy // ignore: cast_nullable_to_non_nullable
              as bool?,
      warranty: warranty == freezed
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsInformationDTO extends _TermsInformationDTO {
  _$_TermsInformationDTO(
      {this.yearOfPurchase,
      @BooleanSerializer() this.repairHistory,
      @BooleanSerializer() this.refundPolicy,
      @BooleanSerializer() this.warranty})
      : super._();

  factory _$_TermsInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TermsInformationDTOFromJson(json);

  @override
  final int? yearOfPurchase;
  @override
  @BooleanSerializer()
  final bool? repairHistory;
  @override
  @BooleanSerializer()
  final bool? refundPolicy;
  @override
  @BooleanSerializer()
  final bool? warranty;

  @override
  String toString() {
    return 'TermsInformationDTO(yearOfPurchase: $yearOfPurchase, repairHistory: $repairHistory, refundPolicy: $refundPolicy, warranty: $warranty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TermsInformationDTO &&
            const DeepCollectionEquality()
                .equals(other.yearOfPurchase, yearOfPurchase) &&
            const DeepCollectionEquality()
                .equals(other.repairHistory, repairHistory) &&
            const DeepCollectionEquality()
                .equals(other.refundPolicy, refundPolicy) &&
            const DeepCollectionEquality().equals(other.warranty, warranty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(yearOfPurchase),
      const DeepCollectionEquality().hash(repairHistory),
      const DeepCollectionEquality().hash(refundPolicy),
      const DeepCollectionEquality().hash(warranty));

  @JsonKey(ignore: true)
  @override
  _$TermsInformationDTOCopyWith<_TermsInformationDTO> get copyWith =>
      __$TermsInformationDTOCopyWithImpl<_TermsInformationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsInformationDTOToJson(this);
  }
}

abstract class _TermsInformationDTO extends TermsInformationDTO {
  factory _TermsInformationDTO(
      {int? yearOfPurchase,
      @BooleanSerializer() bool? repairHistory,
      @BooleanSerializer() bool? refundPolicy,
      @BooleanSerializer() bool? warranty}) = _$_TermsInformationDTO;
  _TermsInformationDTO._() : super._();

  factory _TermsInformationDTO.fromJson(Map<String, dynamic> json) =
      _$_TermsInformationDTO.fromJson;

  @override
  int? get yearOfPurchase;
  @override
  @BooleanSerializer()
  bool? get repairHistory;
  @override
  @BooleanSerializer()
  bool? get refundPolicy;
  @override
  @BooleanSerializer()
  bool? get warranty;
  @override
  @JsonKey(ignore: true)
  _$TermsInformationDTOCopyWith<_TermsInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
