// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of meta_field;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationDTO _$PaginationDTOFromJson(Map<String, dynamic> json) {
  return _PaginationDTO.fromJson(json);
}

/// @nodoc
class _$PaginationDTOTearOff {
  const _$PaginationDTOTearOff();

  _PaginationDTO call(
      {@JsonKey(name: 'current') int? currentPage,
      int? from,
      @JsonKey(name: 'last') int? lastPage,
      @JsonKey(name: 'next') int? next,
      @JsonKey(name: 'next_page') String? nextPage,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      int? to,
      @JsonKey(name: 'total_count') int? total}) {
    return _PaginationDTO(
      currentPage: currentPage,
      from: from,
      lastPage: lastPage,
      next: next,
      nextPage: nextPage,
      path: path,
      perPage: perPage,
      to: to,
      total: total,
    );
  }

  PaginationDTO fromJson(Map<String, Object?> json) {
    return PaginationDTO.fromJson(json);
  }
}

/// @nodoc
const $PaginationDTO = _$PaginationDTOTearOff();

/// @nodoc
mixin _$PaginationDTO {
  @JsonKey(name: 'current')
  int? get currentPage => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  int? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  String? get nextPage => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationDTOCopyWith<PaginationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDTOCopyWith<$Res> {
  factory $PaginationDTOCopyWith(
          PaginationDTO value, $Res Function(PaginationDTO) then) =
      _$PaginationDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current') int? currentPage,
      int? from,
      @JsonKey(name: 'last') int? lastPage,
      @JsonKey(name: 'next') int? next,
      @JsonKey(name: 'next_page') String? nextPage,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      int? to,
      @JsonKey(name: 'total_count') int? total});
}

/// @nodoc
class _$PaginationDTOCopyWithImpl<$Res>
    implements $PaginationDTOCopyWith<$Res> {
  _$PaginationDTOCopyWithImpl(this._value, this._then);

  final PaginationDTO _value;
  // ignore: unused_field
  final $Res Function(PaginationDTO) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? next = freezed,
    Object? nextPage = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PaginationDTOCopyWith<$Res>
    implements $PaginationDTOCopyWith<$Res> {
  factory _$PaginationDTOCopyWith(
          _PaginationDTO value, $Res Function(_PaginationDTO) then) =
      __$PaginationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current') int? currentPage,
      int? from,
      @JsonKey(name: 'last') int? lastPage,
      @JsonKey(name: 'next') int? next,
      @JsonKey(name: 'next_page') String? nextPage,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      int? to,
      @JsonKey(name: 'total_count') int? total});
}

/// @nodoc
class __$PaginationDTOCopyWithImpl<$Res>
    extends _$PaginationDTOCopyWithImpl<$Res>
    implements _$PaginationDTOCopyWith<$Res> {
  __$PaginationDTOCopyWithImpl(
      _PaginationDTO _value, $Res Function(_PaginationDTO) _then)
      : super(_value, (v) => _then(v as _PaginationDTO));

  @override
  _PaginationDTO get _value => super._value as _PaginationDTO;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? next = freezed,
    Object? nextPage = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_PaginationDTO(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationDTO extends _PaginationDTO {
  const _$_PaginationDTO(
      {@JsonKey(name: 'current') this.currentPage,
      this.from,
      @JsonKey(name: 'last') this.lastPage,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'next_page') this.nextPage,
      this.path,
      @JsonKey(name: 'per_page') this.perPage,
      this.to,
      @JsonKey(name: 'total_count') this.total})
      : super._();

  factory _$_PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationDTOFromJson(json);

  @override
  @JsonKey(name: 'current')
  final int? currentPage;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last')
  final int? lastPage;
  @override
  @JsonKey(name: 'next')
  final int? next;
  @override
  @JsonKey(name: 'next_page')
  final String? nextPage;
  @override
  final String? path;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  final int? to;
  @override
  @JsonKey(name: 'total_count')
  final int? total;

  @override
  String toString() {
    return 'PaginationDTO(currentPage: $currentPage, from: $from, lastPage: $lastPage, next: $next, nextPage: $nextPage, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationDTO &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.lastPage, lastPage) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(lastPage),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(nextPage),
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$PaginationDTOCopyWith<_PaginationDTO> get copyWith =>
      __$PaginationDTOCopyWithImpl<_PaginationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationDTOToJson(this);
  }
}

abstract class _PaginationDTO extends PaginationDTO {
  const factory _PaginationDTO(
      {@JsonKey(name: 'current') int? currentPage,
      int? from,
      @JsonKey(name: 'last') int? lastPage,
      @JsonKey(name: 'next') int? next,
      @JsonKey(name: 'next_page') String? nextPage,
      String? path,
      @JsonKey(name: 'per_page') int? perPage,
      int? to,
      @JsonKey(name: 'total_count') int? total}) = _$_PaginationDTO;
  const _PaginationDTO._() : super._();

  factory _PaginationDTO.fromJson(Map<String, dynamic> json) =
      _$_PaginationDTO.fromJson;

  @override
  @JsonKey(name: 'current')
  int? get currentPage;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last')
  int? get lastPage;
  @override
  @JsonKey(name: 'next')
  int? get next;
  @override
  @JsonKey(name: 'next_page')
  String? get nextPage;
  @override
  String? get path;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  int? get to;
  @override
  @JsonKey(name: 'total_count')
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$PaginationDTOCopyWith<_PaginationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
