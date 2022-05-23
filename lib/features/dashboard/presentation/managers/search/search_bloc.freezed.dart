// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of search_bloc.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$_RefreshModelHistoryEventCopyWith<$Res> {
  factory _$$_RefreshModelHistoryEventCopyWith(
          _$_RefreshModelHistoryEvent value,
          $Res Function(_$_RefreshModelHistoryEvent) then) =
      __$$_RefreshModelHistoryEventCopyWithImpl<$Res>;
  $Res call({SearchModel model, AwaitCallback? callback});
}

/// @nodoc
class __$$_RefreshModelHistoryEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_RefreshModelHistoryEventCopyWith<$Res> {
  __$$_RefreshModelHistoryEventCopyWithImpl(_$_RefreshModelHistoryEvent _value,
      $Res Function(_$_RefreshModelHistoryEvent) _then)
      : super(_value, (v) => _then(v as _$_RefreshModelHistoryEvent));

  @override
  _$_RefreshModelHistoryEvent get _value =>
      super._value as _$_RefreshModelHistoryEvent;

  @override
  $Res call({
    Object? model = freezed,
    Object? callback = freezed,
  }) {
    return _then(_$_RefreshModelHistoryEvent(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SearchModel,
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as AwaitCallback?,
    ));
  }
}

/// @nodoc

class _$_RefreshModelHistoryEvent implements _RefreshModelHistoryEvent {
  const _$_RefreshModelHistoryEvent(this.model, {this.callback});

  @override
  final SearchModel model;
  @override
  final AwaitCallback? callback;

  @override
  String toString() {
    return 'SearchEvent.refresh(model: $model, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshModelHistoryEvent &&
            const DeepCollectionEquality().equals(other.model, model) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(model), callback);

  @JsonKey(ignore: true)
  @override
  _$$_RefreshModelHistoryEventCopyWith<_$_RefreshModelHistoryEvent>
      get copyWith => __$$_RefreshModelHistoryEventCopyWithImpl<
          _$_RefreshModelHistoryEvent>(this, _$identity);
}

abstract class _RefreshModelHistoryEvent implements SearchEvent {
  const factory _RefreshModelHistoryEvent(final SearchModel model,
      {final AwaitCallback? callback}) = _$_RefreshModelHistoryEvent;

  SearchModel get model => throw _privateConstructorUsedError;
  AwaitCallback? get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RefreshModelHistoryEventCopyWith<_$_RefreshModelHistoryEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$___SearchEventCopyWith<$Res> {
  factory _$$___SearchEventCopyWith(
          _$___SearchEvent value, $Res Function(_$___SearchEvent) then) =
      __$$___SearchEventCopyWithImpl<$Res>;
  $Res call(
      {String query,
      SearchModel? model,
      int? perPage,
      bool nextPage,
      AwaitCallback? callback});
}

/// @nodoc
class __$$___SearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$___SearchEventCopyWith<$Res> {
  __$$___SearchEventCopyWithImpl(
      _$___SearchEvent _value, $Res Function(_$___SearchEvent) _then)
      : super(_value, (v) => _then(v as _$___SearchEvent));

  @override
  _$___SearchEvent get _value => super._value as _$___SearchEvent;

  @override
  $Res call({
    Object? query = freezed,
    Object? model = freezed,
    Object? perPage = freezed,
    Object? nextPage = freezed,
    Object? callback = freezed,
  }) {
    return _then(_$___SearchEvent(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SearchModel?,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as AwaitCallback?,
    ));
  }
}

/// @nodoc

class _$___SearchEvent implements ___SearchEvent {
  const _$___SearchEvent(this.query,
      {this.model, this.perPage, this.nextPage = false, this.callback});

  @override
  final String query;
  @override
  final SearchModel? model;
  @override
  final int? perPage;
  @override
  @JsonKey()
  final bool nextPage;
  @override
  final AwaitCallback? callback;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query, model: $model, perPage: $perPage, nextPage: $nextPage, callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$___SearchEvent &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(nextPage),
      callback);

  @JsonKey(ignore: true)
  @override
  _$$___SearchEventCopyWith<_$___SearchEvent> get copyWith =>
      __$$___SearchEventCopyWithImpl<_$___SearchEvent>(this, _$identity);
}

abstract class ___SearchEvent implements SearchEvent {
  const factory ___SearchEvent(final String query,
      {final SearchModel? model,
      final int? perPage,
      final bool nextPage,
      final AwaitCallback? callback}) = _$___SearchEvent;

  String get query => throw _privateConstructorUsedError;
  SearchModel? get model => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  bool get nextPage => throw _privateConstructorUsedError;
  AwaitCallback? get callback => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$___SearchEventCopyWith<_$___SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearHistoryEventCopyWith<$Res> {
  factory _$$_ClearHistoryEventCopyWith(_$_ClearHistoryEvent value,
          $Res Function(_$_ClearHistoryEvent) then) =
      __$$_ClearHistoryEventCopyWithImpl<$Res>;
  $Res call({SearchModel? model});
}

/// @nodoc
class __$$_ClearHistoryEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_ClearHistoryEventCopyWith<$Res> {
  __$$_ClearHistoryEventCopyWithImpl(
      _$_ClearHistoryEvent _value, $Res Function(_$_ClearHistoryEvent) _then)
      : super(_value, (v) => _then(v as _$_ClearHistoryEvent));

  @override
  _$_ClearHistoryEvent get _value => super._value as _$_ClearHistoryEvent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_ClearHistoryEvent(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SearchModel?,
    ));
  }
}

/// @nodoc

class _$_ClearHistoryEvent implements _ClearHistoryEvent {
  const _$_ClearHistoryEvent([this.model]);

  @override
  final SearchModel? model;

  @override
  String toString() {
    return 'SearchEvent.clear(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearHistoryEvent &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_ClearHistoryEventCopyWith<_$_ClearHistoryEvent> get copyWith =>
      __$$_ClearHistoryEventCopyWithImpl<_$_ClearHistoryEvent>(
          this, _$identity);
}

abstract class _ClearHistoryEvent implements SearchEvent {
  const factory _ClearHistoryEvent([final SearchModel? model]) =
      _$_ClearHistoryEvent;

  SearchModel? get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ClearHistoryEventCopyWith<_$_ClearHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isSearching => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;
  SearchModel get model => throw _privateConstructorUsedError; //
  KtList<User> get users => throw _privateConstructorUsedError;
  KtList<Product> get products => throw _privateConstructorUsedError; //
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSearching,
      String? searchQuery,
      SearchModel model,
      KtList<User> users,
      KtList<Product> products,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isSearching = freezed,
    Object? searchQuery = freezed,
    Object? model = freezed,
    Object? users = freezed,
    Object? products = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SearchModel,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as KtList<Product>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSearching,
      String? searchQuery,
      SearchModel model,
      KtList<User> users,
      KtList<Product> products,
      Option<AppHttpResponse?> status});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? isSearching = freezed,
    Object? searchQuery = freezed,
    Object? model = freezed,
    Object? users = freezed,
    Object? products = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_SearchState(
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SearchModel,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as KtList<Product>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_SearchState extends _SearchState {
  const _$_SearchState(
      {this.isSearching = false,
      this.searchQuery,
      this.model = SearchModel.product,
      this.users = const KtList.empty(),
      this.products = const KtList.empty(),
      this.status = const None()})
      : super._();

  @override
  @JsonKey()
  final bool isSearching;
  @override
  final String? searchQuery;
  @override
  @JsonKey()
  final SearchModel model;
//
  @override
  @JsonKey()
  final KtList<User> users;
  @override
  @JsonKey()
  final KtList<Product> products;
//
  @override
  @JsonKey()
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, searchQuery: $searchQuery, model: $model, users: $users, products: $products, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other.isSearching, isSearching) &&
            const DeepCollectionEquality()
                .equals(other.searchQuery, searchQuery) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSearching),
      const DeepCollectionEquality().hash(searchQuery),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {final bool isSearching,
      final String? searchQuery,
      final SearchModel model,
      final KtList<User> users,
      final KtList<Product> products,
      final Option<AppHttpResponse?> status}) = _$_SearchState;
  const _SearchState._() : super._();

  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  String? get searchQuery => throw _privateConstructorUsedError;
  @override
  SearchModel get model => throw _privateConstructorUsedError;
  @override //
  KtList<User> get users => throw _privateConstructorUsedError;
  @override
  KtList<Product> get products => throw _privateConstructorUsedError;
  @override //
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
