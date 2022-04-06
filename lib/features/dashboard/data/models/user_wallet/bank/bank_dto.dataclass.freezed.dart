// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bank_dto.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankDTO _$BankDTOFromJson(Map<String, dynamic> json) {
  return _BankDTO.fromJson(json);
}

/// @nodoc
class _$BankDTOTearOff {
  const _$BankDTOTearOff();

  _BankDTO call(
      {String? status, String? message, List<BankDTOData> data = const []}) {
    return _BankDTO(
      status: status,
      message: message,
      data: data,
    );
  }

  BankDTO fromJson(Map<String, Object?> json) {
    return BankDTO.fromJson(json);
  }
}

/// @nodoc
const $BankDTO = _$BankDTOTearOff();

/// @nodoc
mixin _$BankDTO {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BankDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDTOCopyWith<BankDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDTOCopyWith<$Res> {
  factory $BankDTOCopyWith(BankDTO value, $Res Function(BankDTO) then) =
      _$BankDTOCopyWithImpl<$Res>;
  $Res call({String? status, String? message, List<BankDTOData> data});
}

/// @nodoc
class _$BankDTOCopyWithImpl<$Res> implements $BankDTOCopyWith<$Res> {
  _$BankDTOCopyWithImpl(this._value, this._then);

  final BankDTO _value;
  // ignore: unused_field
  final $Res Function(BankDTO) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BankDTOData>,
    ));
  }
}

/// @nodoc
abstract class _$BankDTOCopyWith<$Res> implements $BankDTOCopyWith<$Res> {
  factory _$BankDTOCopyWith(_BankDTO value, $Res Function(_BankDTO) then) =
      __$BankDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, List<BankDTOData> data});
}

/// @nodoc
class __$BankDTOCopyWithImpl<$Res> extends _$BankDTOCopyWithImpl<$Res>
    implements _$BankDTOCopyWith<$Res> {
  __$BankDTOCopyWithImpl(_BankDTO _value, $Res Function(_BankDTO) _then)
      : super(_value, (v) => _then(v as _BankDTO));

  @override
  _BankDTO get _value => super._value as _BankDTO;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_BankDTO(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BankDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankDTO extends _BankDTO {
  const _$_BankDTO({this.status, this.message, this.data = const []})
      : super._();

  factory _$_BankDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BankDTOFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @JsonKey()
  @override
  final List<BankDTOData> data;

  @override
  String toString() {
    return 'BankDTO(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankDTO &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$BankDTOCopyWith<_BankDTO> get copyWith =>
      __$BankDTOCopyWithImpl<_BankDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankDTOToJson(this);
  }
}

abstract class _BankDTO extends BankDTO {
  const factory _BankDTO(
      {String? status, String? message, List<BankDTOData> data}) = _$_BankDTO;
  const _BankDTO._() : super._();

  factory _BankDTO.fromJson(Map<String, dynamic> json) = _$_BankDTO.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<BankDTOData> get data;
  @override
  @JsonKey(ignore: true)
  _$BankDTOCopyWith<_BankDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

BankDTOData _$BankDTODataFromJson(Map<String, dynamic> json) {
  return _BankDTOData.fromJson(json);
}

/// @nodoc
class _$BankDTODataTearOff {
  const _$BankDTODataTearOff();

  _BankDTOData call(
      {@StringSerializer() String? id,
      String? code,
      @JsonKey(name: 'name') String? bank}) {
    return _BankDTOData(
      id: id,
      code: code,
      bank: bank,
    );
  }

  BankDTOData fromJson(Map<String, Object?> json) {
    return BankDTOData.fromJson(json);
  }
}

/// @nodoc
const $BankDTOData = _$BankDTODataTearOff();

/// @nodoc
mixin _$BankDTOData {
  @StringSerializer()
  String? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get bank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDTODataCopyWith<BankDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDTODataCopyWith<$Res> {
  factory $BankDTODataCopyWith(
          BankDTOData value, $Res Function(BankDTOData) then) =
      _$BankDTODataCopyWithImpl<$Res>;
  $Res call(
      {@StringSerializer() String? id,
      String? code,
      @JsonKey(name: 'name') String? bank});
}

/// @nodoc
class _$BankDTODataCopyWithImpl<$Res> implements $BankDTODataCopyWith<$Res> {
  _$BankDTODataCopyWithImpl(this._value, this._then);

  final BankDTOData _value;
  // ignore: unused_field
  final $Res Function(BankDTOData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? bank = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BankDTODataCopyWith<$Res>
    implements $BankDTODataCopyWith<$Res> {
  factory _$BankDTODataCopyWith(
          _BankDTOData value, $Res Function(_BankDTOData) then) =
      __$BankDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@StringSerializer() String? id,
      String? code,
      @JsonKey(name: 'name') String? bank});
}

/// @nodoc
class __$BankDTODataCopyWithImpl<$Res> extends _$BankDTODataCopyWithImpl<$Res>
    implements _$BankDTODataCopyWith<$Res> {
  __$BankDTODataCopyWithImpl(
      _BankDTOData _value, $Res Function(_BankDTOData) _then)
      : super(_value, (v) => _then(v as _BankDTOData));

  @override
  _BankDTOData get _value => super._value as _BankDTOData;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? bank = freezed,
  }) {
    return _then(_BankDTOData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: bank == freezed
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankDTOData extends _BankDTOData {
  const _$_BankDTOData(
      {@StringSerializer() this.id,
      this.code,
      @JsonKey(name: 'name') this.bank})
      : super._();

  factory _$_BankDTOData.fromJson(Map<String, dynamic> json) =>
      _$$_BankDTODataFromJson(json);

  @override
  @StringSerializer()
  final String? id;
  @override
  final String? code;
  @override
  @JsonKey(name: 'name')
  final String? bank;

  @override
  String toString() {
    return 'BankDTOData(id: $id, code: $code, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankDTOData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.bank, bank));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(bank));

  @JsonKey(ignore: true)
  @override
  _$BankDTODataCopyWith<_BankDTOData> get copyWith =>
      __$BankDTODataCopyWithImpl<_BankDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankDTODataToJson(this);
  }
}

abstract class _BankDTOData extends BankDTOData {
  const factory _BankDTOData(
      {@StringSerializer() String? id,
      String? code,
      @JsonKey(name: 'name') String? bank}) = _$_BankDTOData;
  const _BankDTOData._() : super._();

  factory _BankDTOData.fromJson(Map<String, dynamic> json) =
      _$_BankDTOData.fromJson;

  @override
  @StringSerializer()
  String? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: 'name')
  String? get bank;
  @override
  @JsonKey(ignore: true)
  _$BankDTODataCopyWith<_BankDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}
