// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of rating.entity.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Rating {
  BasicTextField<double> get delivery => throw _privateConstructorUsedError;
  BasicTextField<double> get responsiveness =>
      throw _privateConstructorUsedError;
  BasicTextField<double> get quality => throw _privateConstructorUsedError;
  BasicTextField<double> get reliability => throw _privateConstructorUsedError;
  BasicTextField<double> get rating => throw _privateConstructorUsedError;
  KtList<Review> get reviews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res>;
  $Res call(
      {BasicTextField<double> delivery,
      BasicTextField<double> responsiveness,
      BasicTextField<double> quality,
      BasicTextField<double> reliability,
      BasicTextField<double> rating,
      KtList<Review> reviews});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res> implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  final Rating _value;
  // ignore: unused_field
  final $Res Function(Rating) _then;

  @override
  $Res call({
    Object? delivery = freezed,
    Object? responsiveness = freezed,
    Object? quality = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      responsiveness: responsiveness == freezed
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as KtList<Review>,
    ));
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  $Res call(
      {BasicTextField<double> delivery,
      BasicTextField<double> responsiveness,
      BasicTextField<double> quality,
      BasicTextField<double> reliability,
      BasicTextField<double> rating,
      KtList<Review> reviews});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res> extends _$RatingCopyWithImpl<$Res>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, (v) => _then(v as _$_Rating));

  @override
  _$_Rating get _value => super._value as _$_Rating;

  @override
  $Res call({
    Object? delivery = freezed,
    Object? responsiveness = freezed,
    Object? quality = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_Rating(
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      responsiveness: responsiveness == freezed
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as KtList<Review>,
    ));
  }
}

/// @nodoc

class _$_Rating extends _Rating {
  const _$_Rating(
      {required this.delivery,
      required this.responsiveness,
      required this.quality,
      required this.reliability,
      required this.rating,
      this.reviews = const KtList.empty()})
      : super._();

  @override
  final BasicTextField<double> delivery;
  @override
  final BasicTextField<double> responsiveness;
  @override
  final BasicTextField<double> quality;
  @override
  final BasicTextField<double> reliability;
  @override
  final BasicTextField<double> rating;
  @override
  @JsonKey()
  final KtList<Review> reviews;

  @override
  String toString() {
    return 'Rating(delivery: $delivery, responsiveness: $responsiveness, quality: $quality, reliability: $reliability, rating: $rating, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            const DeepCollectionEquality().equals(other.delivery, delivery) &&
            const DeepCollectionEquality()
                .equals(other.responsiveness, responsiveness) &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality()
                .equals(other.reliability, reliability) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(delivery),
      const DeepCollectionEquality().hash(responsiveness),
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(reliability),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);
}

abstract class _Rating extends Rating {
  const factory _Rating(
      {required final BasicTextField<double> delivery,
      required final BasicTextField<double> responsiveness,
      required final BasicTextField<double> quality,
      required final BasicTextField<double> reliability,
      required final BasicTextField<double> rating,
      final KtList<Review> reviews}) = _$_Rating;
  const _Rating._() : super._();

  @override
  BasicTextField<double> get delivery => throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get responsiveness =>
      throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get quality => throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get reliability => throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get rating => throw _privateConstructorUsedError;
  @override
  KtList<Review> get reviews => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Review {
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  BasicTextField<double> get delivery => throw _privateConstructorUsedError;
  BasicTextField<double> get quality => throw _privateConstructorUsedError;
  BasicTextField<double> get responsiveness =>
      throw _privateConstructorUsedError;
  BasicTextField<double> get reliability => throw _privateConstructorUsedError;
  BasicTextField<double> get rating => throw _privateConstructorUsedError;
  BasicTextField<String?> get review => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<double> delivery,
      BasicTextField<double> quality,
      BasicTextField<double> responsiveness,
      BasicTextField<double> reliability,
      BasicTextField<double> rating,
      BasicTextField<String?> review,
      User? user,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? delivery = freezed,
    Object? quality = freezed,
    Object? responsiveness = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      responsiveness: responsiveness == freezed
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId<String?> id,
      BasicTextField<double> delivery,
      BasicTextField<double> quality,
      BasicTextField<double> responsiveness,
      BasicTextField<double> reliability,
      BasicTextField<double> rating,
      BasicTextField<String?> review,
      User? user,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, (v) => _then(v as _$_Review));

  @override
  _$_Review get _value => super._value as _$_Review;

  @override
  $Res call({
    Object? id = freezed,
    Object? delivery = freezed,
    Object? quality = freezed,
    Object? responsiveness = freezed,
    Object? reliability = freezed,
    Object? rating = freezed,
    Object? review = freezed,
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Review(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId<String?>,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      responsiveness: responsiveness == freezed
          ? _value.responsiveness
          : responsiveness // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      reliability: reliability == freezed
          ? _value.reliability
          : reliability // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as BasicTextField<double>,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as BasicTextField<String?>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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

class _$_Review extends _Review {
  const _$_Review(
      {required this.id,
      required this.delivery,
      required this.quality,
      required this.responsiveness,
      required this.reliability,
      required this.rating,
      required this.review,
      this.user,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  final UniqueId<String?> id;
  @override
  final BasicTextField<double> delivery;
  @override
  final BasicTextField<double> quality;
  @override
  final BasicTextField<double> responsiveness;
  @override
  final BasicTextField<double> reliability;
  @override
  final BasicTextField<double> rating;
  @override
  final BasicTextField<String?> review;
  @override
  final User? user;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Review(id: $id, delivery: $delivery, quality: $quality, responsiveness: $responsiveness, reliability: $reliability, rating: $rating, review: $review, user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.delivery, delivery) &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality()
                .equals(other.responsiveness, responsiveness) &&
            const DeepCollectionEquality()
                .equals(other.reliability, reliability) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(delivery),
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(responsiveness),
      const DeepCollectionEquality().hash(reliability),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);
}

abstract class _Review extends Review {
  const factory _Review(
      {required final UniqueId<String?> id,
      required final BasicTextField<double> delivery,
      required final BasicTextField<double> quality,
      required final BasicTextField<double> responsiveness,
      required final BasicTextField<double> reliability,
      required final BasicTextField<double> rating,
      required final BasicTextField<String?> review,
      final User? user,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Review;
  const _Review._() : super._();

  @override
  UniqueId<String?> get id => throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get delivery => throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get quality => throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get responsiveness =>
      throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get reliability => throw _privateConstructorUsedError;
  @override
  BasicTextField<double> get rating => throw _privateConstructorUsedError;
  @override
  BasicTextField<String?> get review => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
