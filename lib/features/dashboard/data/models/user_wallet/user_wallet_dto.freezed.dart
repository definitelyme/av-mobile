// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_wallet_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserWalletDTO _$UserWalletDTOFromJson(Map<String, dynamic> json) {
  return _UserWalletDTO.fromJson(json);
}

/// @nodoc
mixin _$UserWalletDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta =>
      throw _privateConstructorUsedError; // required _UserWalletDTOData data,
  _UserWalletDTOData? get data => throw _privateConstructorUsedError;
  _UserWalletDTOData? get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWalletDTOCopyWith<UserWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletDTOCopyWith<$Res> {
  factory $UserWalletDTOCopyWith(
          UserWalletDTO value, $Res Function(UserWalletDTO) then) =
      _$UserWalletDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      _UserWalletDTOData? data,
      _UserWalletDTOData? wallet});

  $MetaDTOCopyWith<$Res>? get meta;
  _$UserWalletDTODataCopyWith<$Res>? get data;
  _$UserWalletDTODataCopyWith<$Res>? get wallet;
}

/// @nodoc
class _$UserWalletDTOCopyWithImpl<$Res>
    implements $UserWalletDTOCopyWith<$Res> {
  _$UserWalletDTOCopyWithImpl(this._value, this._then);

  final UserWalletDTO _value;
  // ignore: unused_field
  final $Res Function(UserWalletDTO) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
    ));
  }

  @override
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  _$UserWalletDTODataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return _$UserWalletDTODataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  _$UserWalletDTODataCopyWith<$Res>? get wallet {
    if (_value.wallet == null) {
      return null;
    }

    return _$UserWalletDTODataCopyWith<$Res>(_value.wallet!, (value) {
      return _then(_value.copyWith(wallet: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserWalletDTOCopyWith<$Res>
    implements $UserWalletDTOCopyWith<$Res> {
  factory _$$_UserWalletDTOCopyWith(
          _$_UserWalletDTO value, $Res Function(_$_UserWalletDTO) then) =
      __$$_UserWalletDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta,
      _UserWalletDTOData? data,
      _UserWalletDTOData? wallet});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
  @override
  _$UserWalletDTODataCopyWith<$Res>? get data;
  @override
  _$UserWalletDTODataCopyWith<$Res>? get wallet;
}

/// @nodoc
class __$$_UserWalletDTOCopyWithImpl<$Res>
    extends _$UserWalletDTOCopyWithImpl<$Res>
    implements _$$_UserWalletDTOCopyWith<$Res> {
  __$$_UserWalletDTOCopyWithImpl(
      _$_UserWalletDTO _value, $Res Function(_$_UserWalletDTO) _then)
      : super(_value, (v) => _then(v as _$_UserWalletDTO));

  @override
  _$_UserWalletDTO get _value => super._value as _$_UserWalletDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_$_UserWalletDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
      wallet: wallet == freezed
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as _UserWalletDTOData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWalletDTO extends _UserWalletDTO {
  const _$_UserWalletDTO(
      {@JsonKey(name: '_meta') this.meta, this.data, this.wallet})
      : super._();

  factory _$_UserWalletDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserWalletDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
// required _UserWalletDTOData data,
  @override
  final _UserWalletDTOData? data;
  @override
  final _UserWalletDTOData? wallet;

  @override
  String toString() {
    return 'UserWalletDTO(meta: $meta, data: $data, wallet: $wallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWalletDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(wallet));

  @JsonKey(ignore: true)
  @override
  _$$_UserWalletDTOCopyWith<_$_UserWalletDTO> get copyWith =>
      __$$_UserWalletDTOCopyWithImpl<_$_UserWalletDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWalletDTOToJson(this);
  }
}

abstract class _UserWalletDTO extends UserWalletDTO {
  const factory _UserWalletDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final _UserWalletDTOData? data,
      final _UserWalletDTOData? wallet}) = _$_UserWalletDTO;
  const _UserWalletDTO._() : super._();

  factory _UserWalletDTO.fromJson(Map<String, dynamic> json) =
      _$_UserWalletDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override // required _UserWalletDTOData data,
  _UserWalletDTOData? get data => throw _privateConstructorUsedError;
  @override
  _UserWalletDTOData? get wallet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserWalletDTOCopyWith<_$_UserWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

_UserWalletDTOData _$_UserWalletDTODataFromJson(Map<String, dynamic> json) {
  return __UserWalletDTOData.fromJson(json);
}

/// @nodoc
mixin _$_UserWalletDTOData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get balance => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get revenue => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get expense => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get expendingExpense => throw _privateConstructorUsedError;
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserWalletDTODataCopyWith<_UserWalletDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserWalletDTODataCopyWith<$Res> {
  factory _$UserWalletDTODataCopyWith(
          _UserWalletDTOData value, $Res Function(_UserWalletDTOData) then) =
      __$UserWalletDTODataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? balance,
      @DoubleSerializer() double? revenue,
      @DoubleSerializer() double? expense,
      @DoubleSerializer() double? expendingExpense,
      @BooleanSerializer() bool? active,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$UserWalletDTODataCopyWithImpl<$Res>
    implements _$UserWalletDTODataCopyWith<$Res> {
  __$UserWalletDTODataCopyWithImpl(this._value, this._then);

  final _UserWalletDTOData _value;
  // ignore: unused_field
  final $Res Function(_UserWalletDTOData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? revenue = freezed,
    Object? expense = freezed,
    Object? expendingExpense = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double?,
      expendingExpense: expendingExpense == freezed
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as double?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$__UserWalletDTODataCopyWith<$Res>
    implements _$UserWalletDTODataCopyWith<$Res> {
  factory _$$__UserWalletDTODataCopyWith(_$__UserWalletDTOData value,
          $Res Function(_$__UserWalletDTOData) then) =
      __$$__UserWalletDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @DoubleSerializer() double? balance,
      @DoubleSerializer() double? revenue,
      @DoubleSerializer() double? expense,
      @DoubleSerializer() double? expendingExpense,
      @BooleanSerializer() bool? active,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$__UserWalletDTODataCopyWithImpl<$Res>
    extends __$UserWalletDTODataCopyWithImpl<$Res>
    implements _$$__UserWalletDTODataCopyWith<$Res> {
  __$$__UserWalletDTODataCopyWithImpl(
      _$__UserWalletDTOData _value, $Res Function(_$__UserWalletDTOData) _then)
      : super(_value, (v) => _then(v as _$__UserWalletDTOData));

  @override
  _$__UserWalletDTOData get _value => super._value as _$__UserWalletDTOData;

  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? revenue = freezed,
    Object? expense = freezed,
    Object? expendingExpense = freezed,
    Object? active = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$__UserWalletDTOData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as double?,
      expense: expense == freezed
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as double?,
      expendingExpense: expendingExpense == freezed
          ? _value.expendingExpense
          : expendingExpense // ignore: cast_nullable_to_non_nullable
              as double?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__UserWalletDTOData extends __UserWalletDTOData {
  const _$__UserWalletDTOData(
      {@JsonKey(name: '_id') this.id,
      @DoubleSerializer() this.balance,
      @DoubleSerializer() this.revenue,
      @DoubleSerializer() this.expense,
      @DoubleSerializer() this.expendingExpense,
      @BooleanSerializer() this.active,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$__UserWalletDTOData.fromJson(Map<String, dynamic> json) =>
      _$$__UserWalletDTODataFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @DoubleSerializer()
  final double? balance;
  @override
  @DoubleSerializer()
  final double? revenue;
  @override
  @DoubleSerializer()
  final double? expense;
  @override
  @DoubleSerializer()
  final double? expendingExpense;
  @override
  @BooleanSerializer()
  final bool? active;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return '_UserWalletDTOData(id: $id, balance: $balance, revenue: $revenue, expense: $expense, expendingExpense: $expendingExpense, active: $active, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__UserWalletDTOData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other.expense, expense) &&
            const DeepCollectionEquality()
                .equals(other.expendingExpense, expendingExpense) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(revenue),
      const DeepCollectionEquality().hash(expense),
      const DeepCollectionEquality().hash(expendingExpense),
      const DeepCollectionEquality().hash(active),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$__UserWalletDTODataCopyWith<_$__UserWalletDTOData> get copyWith =>
      __$$__UserWalletDTODataCopyWithImpl<_$__UserWalletDTOData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__UserWalletDTODataToJson(this);
  }
}

abstract class __UserWalletDTOData extends _UserWalletDTOData {
  const factory __UserWalletDTOData(
      {@JsonKey(name: '_id') final String? id,
      @DoubleSerializer() final double? balance,
      @DoubleSerializer() final double? revenue,
      @DoubleSerializer() final double? expense,
      @DoubleSerializer() final double? expendingExpense,
      @BooleanSerializer() final bool? active,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$__UserWalletDTOData;
  const __UserWalletDTOData._() : super._();

  factory __UserWalletDTOData.fromJson(Map<String, dynamic> json) =
      _$__UserWalletDTOData.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get balance => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get revenue => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get expense => throw _privateConstructorUsedError;
  @override
  @DoubleSerializer()
  double? get expendingExpense => throw _privateConstructorUsedError;
  @override
  @BooleanSerializer()
  bool? get active => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$__UserWalletDTODataCopyWith<_$__UserWalletDTOData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserWalletListDTO _$UserWalletListDTOFromJson(Map<String, dynamic> json) {
  return _UserWalletListDTO.fromJson(json);
}

/// @nodoc
mixin _$UserWalletListDTO {
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<_UserWalletDTOData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserWalletListDTOCopyWith<UserWalletListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWalletListDTOCopyWith<$Res> {
  factory $UserWalletListDTOCopyWith(
          UserWalletListDTO value, $Res Function(UserWalletListDTO) then) =
      _$UserWalletListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<_UserWalletDTOData> data});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$UserWalletListDTOCopyWithImpl<$Res>
    implements $UserWalletListDTOCopyWith<$Res> {
  _$UserWalletListDTOCopyWithImpl(this._value, this._then);

  final UserWalletListDTO _value;
  // ignore: unused_field
  final $Res Function(UserWalletListDTO) _then;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<_UserWalletDTOData>,
    ));
  }

  @override
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserWalletListDTOCopyWith<$Res>
    implements $UserWalletListDTOCopyWith<$Res> {
  factory _$$_UserWalletListDTOCopyWith(_$_UserWalletListDTO value,
          $Res Function(_$_UserWalletListDTO) then) =
      __$$_UserWalletListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_meta') MetaDTO? meta, List<_UserWalletDTOData> data});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_UserWalletListDTOCopyWithImpl<$Res>
    extends _$UserWalletListDTOCopyWithImpl<$Res>
    implements _$$_UserWalletListDTOCopyWith<$Res> {
  __$$_UserWalletListDTOCopyWithImpl(
      _$_UserWalletListDTO _value, $Res Function(_$_UserWalletListDTO) _then)
      : super(_value, (v) => _then(v as _$_UserWalletListDTO));

  @override
  _$_UserWalletListDTO get _value => super._value as _$_UserWalletListDTO;

  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UserWalletListDTO(
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<_UserWalletDTOData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserWalletListDTO extends _UserWalletListDTO {
  const _$_UserWalletListDTO(
      {@JsonKey(name: '_meta') this.meta,
      final List<_UserWalletDTOData> data = const []})
      : _data = data,
        super._();

  factory _$_UserWalletListDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserWalletListDTOFromJson(json);

  @override
  @JsonKey(name: '_meta')
  final MetaDTO? meta;
  final List<_UserWalletDTOData> _data;
  @override
  @JsonKey()
  List<_UserWalletDTOData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserWalletListDTO(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserWalletListDTO &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_UserWalletListDTOCopyWith<_$_UserWalletListDTO> get copyWith =>
      __$$_UserWalletListDTOCopyWithImpl<_$_UserWalletListDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserWalletListDTOToJson(this);
  }
}

abstract class _UserWalletListDTO extends UserWalletListDTO {
  const factory _UserWalletListDTO(
      {@JsonKey(name: '_meta') final MetaDTO? meta,
      final List<_UserWalletDTOData> data}) = _$_UserWalletListDTO;
  const _UserWalletListDTO._() : super._();

  factory _UserWalletListDTO.fromJson(Map<String, dynamic> json) =
      _$_UserWalletListDTO.fromJson;

  @override
  @JsonKey(name: '_meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @override
  List<_UserWalletDTOData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserWalletListDTOCopyWith<_$_UserWalletListDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
