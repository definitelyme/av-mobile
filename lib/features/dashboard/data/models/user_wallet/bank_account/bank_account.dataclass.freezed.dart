// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of bank_account.dataclass.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAccountDTO _$BankAccountDTOFromJson(Map<String, dynamic> json) {
  return _BankAccountDTO.fromJson(json);
}

/// @nodoc
mixin _$BankAccountDTO {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  _BankAccountData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountDTOCopyWith<BankAccountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountDTOCopyWith<$Res> {
  factory $BankAccountDTOCopyWith(
          BankAccountDTO value, $Res Function(BankAccountDTO) then) =
      _$BankAccountDTOCopyWithImpl<$Res>;
  $Res call({String? status, String? message, _BankAccountData? data});

  _$BankAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BankAccountDTOCopyWithImpl<$Res>
    implements $BankAccountDTOCopyWith<$Res> {
  _$BankAccountDTOCopyWithImpl(this._value, this._then);

  final BankAccountDTO _value;
  // ignore: unused_field
  final $Res Function(BankAccountDTO) _then;

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
              as _BankAccountData?,
    ));
  }

  @override
  _$BankAccountDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return _$BankAccountDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_BankAccountDTOCopyWith<$Res>
    implements $BankAccountDTOCopyWith<$Res> {
  factory _$$_BankAccountDTOCopyWith(
          _$_BankAccountDTO value, $Res Function(_$_BankAccountDTO) then) =
      __$$_BankAccountDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message, _BankAccountData? data});

  @override
  _$BankAccountDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_BankAccountDTOCopyWithImpl<$Res>
    extends _$BankAccountDTOCopyWithImpl<$Res>
    implements _$$_BankAccountDTOCopyWith<$Res> {
  __$$_BankAccountDTOCopyWithImpl(
      _$_BankAccountDTO _value, $Res Function(_$_BankAccountDTO) _then)
      : super(_value, (v) => _then(v as _$_BankAccountDTO));

  @override
  _$_BankAccountDTO get _value => super._value as _$_BankAccountDTO;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BankAccountDTO(
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
              as _BankAccountData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankAccountDTO extends _BankAccountDTO {
  const _$_BankAccountDTO({this.status, this.message, this.data}) : super._();

  factory _$_BankAccountDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BankAccountDTOFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final _BankAccountData? data;

  @override
  String toString() {
    return 'BankAccountDTO(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankAccountDTO &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_BankAccountDTOCopyWith<_$_BankAccountDTO> get copyWith =>
      __$$_BankAccountDTOCopyWithImpl<_$_BankAccountDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAccountDTOToJson(
      this,
    );
  }
}

abstract class _BankAccountDTO extends BankAccountDTO {
  const factory _BankAccountDTO(
      {final String? status,
      final String? message,
      final _BankAccountData? data}) = _$_BankAccountDTO;
  const _BankAccountDTO._() : super._();

  factory _BankAccountDTO.fromJson(Map<String, dynamic> json) =
      _$_BankAccountDTO.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  _BankAccountData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BankAccountDTOCopyWith<_$_BankAccountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_BankAccountData _$_BankAccountDataFromJson(Map<String, dynamic> json) {
  return __BankAccountData.fromJson(json);
}

/// @nodoc
mixin _$_BankAccountData {
  @JsonKey(name: 'account_name')
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BankAccountDataCopyWith<_BankAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BankAccountDataCopyWith<$Res> {
  factory _$BankAccountDataCopyWith(
          _BankAccountData value, $Res Function(_BankAccountData) then) =
      __$BankAccountDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'account_number') String? accountNumber});
}

/// @nodoc
class __$BankAccountDataCopyWithImpl<$Res>
    implements _$BankAccountDataCopyWith<$Res> {
  __$BankAccountDataCopyWithImpl(this._value, this._then);

  final _BankAccountData _value;
  // ignore: unused_field
  final $Res Function(_BankAccountData) _then;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNumber = freezed,
  }) {
    return _then(_value.copyWith(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$__BankAccountDataCopyWith<$Res>
    implements _$BankAccountDataCopyWith<$Res> {
  factory _$$__BankAccountDataCopyWith(
          _$__BankAccountData value, $Res Function(_$__BankAccountData) then) =
      __$$__BankAccountDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'account_number') String? accountNumber});
}

/// @nodoc
class __$$__BankAccountDataCopyWithImpl<$Res>
    extends __$BankAccountDataCopyWithImpl<$Res>
    implements _$$__BankAccountDataCopyWith<$Res> {
  __$$__BankAccountDataCopyWithImpl(
      _$__BankAccountData _value, $Res Function(_$__BankAccountData) _then)
      : super(_value, (v) => _then(v as _$__BankAccountData));

  @override
  _$__BankAccountData get _value => super._value as _$__BankAccountData;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNumber = freezed,
  }) {
    return _then(_$__BankAccountData(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__BankAccountData extends __BankAccountData {
  const _$__BankAccountData(
      {@JsonKey(name: 'account_name') this.accountName,
      @JsonKey(name: 'account_number') this.accountNumber})
      : super._();

  factory _$__BankAccountData.fromJson(Map<String, dynamic> json) =>
      _$$__BankAccountDataFromJson(json);

  @override
  @JsonKey(name: 'account_name')
  final String? accountName;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;

  @override
  String toString() {
    return '_BankAccountData(accountName: $accountName, accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__BankAccountData &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(accountNumber));

  @JsonKey(ignore: true)
  @override
  _$$__BankAccountDataCopyWith<_$__BankAccountData> get copyWith =>
      __$$__BankAccountDataCopyWithImpl<_$__BankAccountData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__BankAccountDataToJson(
      this,
    );
  }
}

abstract class __BankAccountData extends _BankAccountData {
  const factory __BankAccountData(
          {@JsonKey(name: 'account_name') final String? accountName,
          @JsonKey(name: 'account_number') final String? accountNumber}) =
      _$__BankAccountData;
  const __BankAccountData._() : super._();

  factory __BankAccountData.fromJson(Map<String, dynamic> json) =
      _$__BankAccountData.fromJson;

  @override
  @JsonKey(name: 'account_name')
  String? get accountName;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  @JsonKey(ignore: true)
  _$$__BankAccountDataCopyWith<_$__BankAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}
