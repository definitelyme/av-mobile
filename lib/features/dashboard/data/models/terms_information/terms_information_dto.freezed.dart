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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TermsInformationDTO _$TermsInformationDTOFromJson(Map<String, dynamic> json) {
  return _TermsInformationDTO.fromJson(json);
}

/// @nodoc
mixin _$TermsInformationDTO {
  @StringSerializer()
  int? get yearOfPurchase => throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get repairHistory => throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get refundPolicy => throw _privateConstructorUsedError;
  String? get warranty => throw _privateConstructorUsedError;
  String? get otherInfo => throw _privateConstructorUsedError;

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
      {@StringSerializer()
          int? yearOfPurchase,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? repairHistory,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? refundPolicy,
      String? warranty,
      String? otherInfo});
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
    Object? otherInfo = freezed,
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
              as String?,
      otherInfo: otherInfo == freezed
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TermsInformationDTOCopyWith<$Res>
    implements $TermsInformationDTOCopyWith<$Res> {
  factory _$$_TermsInformationDTOCopyWith(_$_TermsInformationDTO value,
          $Res Function(_$_TermsInformationDTO) then) =
      __$$_TermsInformationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@StringSerializer()
          int? yearOfPurchase,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? repairHistory,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          bool? refundPolicy,
      String? warranty,
      String? otherInfo});
}

/// @nodoc
class __$$_TermsInformationDTOCopyWithImpl<$Res>
    extends _$TermsInformationDTOCopyWithImpl<$Res>
    implements _$$_TermsInformationDTOCopyWith<$Res> {
  __$$_TermsInformationDTOCopyWithImpl(_$_TermsInformationDTO _value,
      $Res Function(_$_TermsInformationDTO) _then)
      : super(_value, (v) => _then(v as _$_TermsInformationDTO));

  @override
  _$_TermsInformationDTO get _value => super._value as _$_TermsInformationDTO;

  @override
  $Res call({
    Object? yearOfPurchase = freezed,
    Object? repairHistory = freezed,
    Object? refundPolicy = freezed,
    Object? warranty = freezed,
    Object? otherInfo = freezed,
  }) {
    return _then(_$_TermsInformationDTO(
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
              as String?,
      otherInfo: otherInfo == freezed
          ? _value.otherInfo
          : otherInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TermsInformationDTO extends _TermsInformationDTO {
  _$_TermsInformationDTO(
      {@StringSerializer()
          this.yearOfPurchase,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          this.repairHistory,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          this.refundPolicy,
      this.warranty,
      this.otherInfo})
      : super._();

  factory _$_TermsInformationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TermsInformationDTOFromJson(json);

  @override
  @StringSerializer()
  final int? yearOfPurchase;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  final bool? repairHistory;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  final bool? refundPolicy;
  @override
  final String? warranty;
  @override
  final String? otherInfo;

  @override
  String toString() {
    return 'TermsInformationDTO(yearOfPurchase: $yearOfPurchase, repairHistory: $repairHistory, refundPolicy: $refundPolicy, warranty: $warranty, otherInfo: $otherInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TermsInformationDTO &&
            const DeepCollectionEquality()
                .equals(other.yearOfPurchase, yearOfPurchase) &&
            const DeepCollectionEquality()
                .equals(other.repairHistory, repairHistory) &&
            const DeepCollectionEquality()
                .equals(other.refundPolicy, refundPolicy) &&
            const DeepCollectionEquality().equals(other.warranty, warranty) &&
            const DeepCollectionEquality().equals(other.otherInfo, otherInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(yearOfPurchase),
      const DeepCollectionEquality().hash(repairHistory),
      const DeepCollectionEquality().hash(refundPolicy),
      const DeepCollectionEquality().hash(warranty),
      const DeepCollectionEquality().hash(otherInfo));

  @JsonKey(ignore: true)
  @override
  _$$_TermsInformationDTOCopyWith<_$_TermsInformationDTO> get copyWith =>
      __$$_TermsInformationDTOCopyWithImpl<_$_TermsInformationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TermsInformationDTOToJson(this);
  }
}

abstract class _TermsInformationDTO extends TermsInformationDTO {
  factory _TermsInformationDTO(
      {@StringSerializer()
          final int? yearOfPurchase,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          final bool? repairHistory,
      @JsonKey(toJson: BooleanSerializer.toJsonString)
      @BooleanSerializer()
          final bool? refundPolicy,
      final String? warranty,
      final String? otherInfo}) = _$_TermsInformationDTO;
  _TermsInformationDTO._() : super._();

  factory _TermsInformationDTO.fromJson(Map<String, dynamic> json) =
      _$_TermsInformationDTO.fromJson;

  @override
  @StringSerializer()
  int? get yearOfPurchase => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get repairHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: BooleanSerializer.toJsonString)
  @BooleanSerializer()
  bool? get refundPolicy => throw _privateConstructorUsedError;
  @override
  String? get warranty => throw _privateConstructorUsedError;
  @override
  String? get otherInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TermsInformationDTOCopyWith<_$_TermsInformationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
