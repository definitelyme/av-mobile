// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of review_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDTO _$ReviewDTOFromJson(Map<String, dynamic> json) {
  return _ReviewDTO.fromJson(json);
}

/// @nodoc
class _$ReviewDTOTearOff {
  const _$ReviewDTOTearOff();

  _ReviewDTO call(
      {String? id,
      String? review,
      @DoubleSerializer() double? delivery,
      @DoubleSerializer() double? quality,
      @DoubleSerializer() double? responsiveness,
      @DoubleSerializer() double? reliability,
      @DoubleSerializer() double? rating,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) {
    return _ReviewDTO(
      id: id,
      review: review,
      delivery: delivery,
      quality: quality,
      responsiveness: responsiveness,
      reliability: reliability,
      rating: rating,
      user: user,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  ReviewDTO fromJson(Map<String, Object?> json) {
    return ReviewDTO.fromJson(json);
  }
}

/// @nodoc
const $ReviewDTO = _$ReviewDTOTearOff();

/// @nodoc
mixin _$ReviewDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get delivery => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get quality => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get responsiveness => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get reliability => throw _privateConstructorUsedError;
  @DoubleSerializer()
  double? get rating => throw _privateConstructorUsedError;
  UserDTO? get user => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDTOCopyWith<ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDTOCopyWith<$Res> {
  factory $ReviewDTOCopyWith(ReviewDTO value, $Res Function(ReviewDTO) then) =
      _$ReviewDTOCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? review,
      @DoubleSerializer() double? delivery,
      @DoubleSerializer() double? quality,
      @DoubleSerializer() double? responsiveness,
      @DoubleSerializer() double? reliability,
      @DoubleSerializer() double? rating,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReviewDTOCopyWithImpl<$Res> implements $ReviewDTOCopyWith<$Res> {
  _$ReviewDTOCopyWithImpl(this._value, this._then);

  final ReviewDTO _value;
  // ignore: unused_field
  final $Res Function(ReviewDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? review = freezed,
    Object? delivery = freezed,
    Object? quality = freezed,
    Object? responsiveness = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as double?,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as double?,
      responsiveness: responsiveness == freezed
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as double?,
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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

  @override
  $UserDTOCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDTOCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewDTOCopyWith<$Res> implements $ReviewDTOCopyWith<$Res> {
  factory _$ReviewDTOCopyWith(
          _ReviewDTO value, $Res Function(_ReviewDTO) then) =
      __$ReviewDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? review,
      @DoubleSerializer() double? delivery,
      @DoubleSerializer() double? quality,
      @DoubleSerializer() double? responsiveness,
      @DoubleSerializer() double? reliability,
      @DoubleSerializer() double? rating,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});

  @override
  $UserDTOCopyWith<$Res>? get user;
}

/// @nodoc
class __$ReviewDTOCopyWithImpl<$Res> extends _$ReviewDTOCopyWithImpl<$Res>
    implements _$ReviewDTOCopyWith<$Res> {
  __$ReviewDTOCopyWithImpl(_ReviewDTO _value, $Res Function(_ReviewDTO) _then)
      : super(_value, (v) => _then(v as _ReviewDTO));

  @override
  _ReviewDTO get _value => super._value as _ReviewDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? review = freezed,
    Object? delivery = freezed,
    Object? quality = freezed,
    Object? responsiveness = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ReviewDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as double?,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as double?,
      responsiveness: responsiveness == freezed
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as double?,
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO?,
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
class _$_ReviewDTO extends _ReviewDTO {
  const _$_ReviewDTO(
      {this.id,
      this.review,
      @DoubleSerializer() this.delivery,
      @DoubleSerializer() this.quality,
      @DoubleSerializer() this.responsiveness,
      @DoubleSerializer() this.reliability,
      @DoubleSerializer() this.rating,
      this.user,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : super._();

  factory _$_ReviewDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? review;
  @override
  @DoubleSerializer()
  final double? delivery;
  @override
  @DoubleSerializer()
  final double? quality;
  @override
  @DoubleSerializer()
  final double? responsiveness;
  @override
  @DoubleSerializer()
  final double? reliability;
  @override
  @DoubleSerializer()
  final double? rating;
  @override
  final UserDTO? user;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ReviewDTO(id: $id, review: $review, delivery: $delivery, quality: $quality, responsiveness: $responsiveness, reliability: $reliability, rating: $rating, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.delivery, delivery) &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality()
                .equals(other.responsiveness, responsiveness) &&
            const DeepCollectionEquality()
                .equals(other.reliability, reliability) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(delivery),
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(responsiveness),
      const DeepCollectionEquality().hash(reliability),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ReviewDTOCopyWith<_ReviewDTO> get copyWith =>
      __$ReviewDTOCopyWithImpl<_ReviewDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewDTOToJson(this);
  }
}

abstract class _ReviewDTO extends ReviewDTO {
  const factory _ReviewDTO(
      {String? id,
      String? review,
      @DoubleSerializer() double? delivery,
      @DoubleSerializer() double? quality,
      @DoubleSerializer() double? responsiveness,
      @DoubleSerializer() double? reliability,
      @DoubleSerializer() double? rating,
      UserDTO? user,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt}) = _$_ReviewDTO;
  const _ReviewDTO._() : super._();

  factory _ReviewDTO.fromJson(Map<String, dynamic> json) =
      _$_ReviewDTO.fromJson;

  @override
  String? get id;
  @override
  String? get review;
  @override
  @DoubleSerializer()
  double? get delivery;
  @override
  @DoubleSerializer()
  double? get quality;
  @override
  @DoubleSerializer()
  double? get responsiveness;
  @override
  @DoubleSerializer()
  double? get reliability;
  @override
  @DoubleSerializer()
  double? get rating;
  @override
  UserDTO? get user;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ReviewDTOCopyWith<_ReviewDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
