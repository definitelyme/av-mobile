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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationDTO _$PaginationDTOFromJson(Map<String, dynamic> json) {
  return _PaginationDTO.fromJson(json);
}

/// @nodoc
mixin _$PaginationDTO {
  @JsonKey(name: 'current')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  int? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'next') int? next,
      @JsonKey(name: 'per_page') int? perPage,
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
    Object? next = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginationDTOCopyWith<$Res>
    implements $PaginationDTOCopyWith<$Res> {
  factory _$$_PaginationDTOCopyWith(
          _$_PaginationDTO value, $Res Function(_$_PaginationDTO) then) =
      __$$_PaginationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current') int? currentPage,
      @JsonKey(name: 'next') int? next,
      @JsonKey(name: 'per_page') int? perPage,
      @JsonKey(name: 'total_count') int? total});
}

/// @nodoc
class __$$_PaginationDTOCopyWithImpl<$Res>
    extends _$PaginationDTOCopyWithImpl<$Res>
    implements _$$_PaginationDTOCopyWith<$Res> {
  __$$_PaginationDTOCopyWithImpl(
      _$_PaginationDTO _value, $Res Function(_$_PaginationDTO) _then)
      : super(_value, (v) => _then(v as _$_PaginationDTO));

  @override
  _$_PaginationDTO get _value => super._value as _$_PaginationDTO;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? next = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_PaginationDTO(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'per_page') this.perPage,
      @JsonKey(name: 'total_count') this.total})
      : super._();

  factory _$_PaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationDTOFromJson(json);

  @override
  @JsonKey(name: 'current')
  final int? currentPage;
  @override
  @JsonKey(name: 'next')
  final int? next;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @JsonKey(name: 'total_count')
  final int? total;

  @override
  String toString() {
    return 'PaginationDTO(currentPage: $currentPage, next: $next, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationDTO &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_PaginationDTOCopyWith<_$_PaginationDTO> get copyWith =>
      __$$_PaginationDTOCopyWithImpl<_$_PaginationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationDTOToJson(this);
  }
}

abstract class _PaginationDTO extends PaginationDTO {
  const factory _PaginationDTO(
      {@JsonKey(name: 'current') final int? currentPage,
      @JsonKey(name: 'next') final int? next,
      @JsonKey(name: 'per_page') final int? perPage,
      @JsonKey(name: 'total_count') final int? total}) = _$_PaginationDTO;
  const _PaginationDTO._() : super._();

  factory _PaginationDTO.fromJson(Map<String, dynamic> json) =
      _$_PaginationDTO.fromJson;

  @override
  @JsonKey(name: 'current')
  int? get currentPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'next')
  int? get next => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_count')
  int? get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationDTOCopyWith<_$_PaginationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
