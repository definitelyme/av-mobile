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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _RefreshModelHistoryEvent refresh(SearchModel model,
      {AwaitCallback? callback}) {
    return _RefreshModelHistoryEvent(
      model,
      callback: callback,
    );
  }

  ___SearchEvent search(String query,
      {SearchModel? model,
      int? perPage,
      bool nextPage = false,
      AwaitCallback? callback}) {
    return ___SearchEvent(
      query,
      model: model,
      perPage: perPage,
      nextPage: nextPage,
      callback: callback,
    );
  }

  _ClearHistoryEvent clear([SearchModel? model]) {
    return _ClearHistoryEvent(
      model,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModel model, AwaitCallback? callback)
        refresh,
    required TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)
        search,
    required TResult Function(SearchModel? model) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModel model, AwaitCallback? callback)? refresh,
    TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)?
        search,
    TResult Function(SearchModel? model)? clear,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshModelHistoryEvent value) refresh,
    required TResult Function(___SearchEvent value) search,
    required TResult Function(_ClearHistoryEvent value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshModelHistoryEvent value)? refresh,
    TResult Function(___SearchEvent value)? search,
    TResult Function(_ClearHistoryEvent value)? clear,
  }) =>
      throw _privateConstructorUsedError;
}

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
abstract class _$RefreshModelHistoryEventCopyWith<$Res> {
  factory _$RefreshModelHistoryEventCopyWith(_RefreshModelHistoryEvent value,
          $Res Function(_RefreshModelHistoryEvent) then) =
      __$RefreshModelHistoryEventCopyWithImpl<$Res>;
  $Res call({SearchModel model, AwaitCallback? callback});
}

/// @nodoc
class __$RefreshModelHistoryEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$RefreshModelHistoryEventCopyWith<$Res> {
  __$RefreshModelHistoryEventCopyWithImpl(_RefreshModelHistoryEvent _value,
      $Res Function(_RefreshModelHistoryEvent) _then)
      : super(_value, (v) => _then(v as _RefreshModelHistoryEvent));

  @override
  _RefreshModelHistoryEvent get _value =>
      super._value as _RefreshModelHistoryEvent;

  @override
  $Res call({
    Object? model = freezed,
    Object? callback = freezed,
  }) {
    return _then(_RefreshModelHistoryEvent(
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
            other is _RefreshModelHistoryEvent &&
            const DeepCollectionEquality().equals(other.model, model) &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(model), callback);

  @JsonKey(ignore: true)
  @override
  _$RefreshModelHistoryEventCopyWith<_RefreshModelHistoryEvent> get copyWith =>
      __$RefreshModelHistoryEventCopyWithImpl<_RefreshModelHistoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModel model, AwaitCallback? callback)
        refresh,
    required TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)
        search,
    required TResult Function(SearchModel? model) clear,
  }) {
    return refresh(model, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModel model, AwaitCallback? callback)? refresh,
    TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)?
        search,
    TResult Function(SearchModel? model)? clear,
  }) {
    return refresh?.call(model, callback);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshModelHistoryEvent value) refresh,
    required TResult Function(___SearchEvent value) search,
    required TResult Function(_ClearHistoryEvent value) clear,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshModelHistoryEvent value)? refresh,
    TResult Function(___SearchEvent value)? search,
    TResult Function(_ClearHistoryEvent value)? clear,
  }) {
    return refresh?.call(this);
  }
}

abstract class _RefreshModelHistoryEvent implements SearchEvent {
  const factory _RefreshModelHistoryEvent(SearchModel model,
      {AwaitCallback? callback}) = _$_RefreshModelHistoryEvent;

  SearchModel get model;
  AwaitCallback? get callback;
  @JsonKey(ignore: true)
  _$RefreshModelHistoryEventCopyWith<_RefreshModelHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$__SearchEventCopyWith<$Res> {
  factory _$__SearchEventCopyWith(
          ___SearchEvent value, $Res Function(___SearchEvent) then) =
      __$__SearchEventCopyWithImpl<$Res>;
  $Res call(
      {String query,
      SearchModel? model,
      int? perPage,
      bool nextPage,
      AwaitCallback? callback});
}

/// @nodoc
class __$__SearchEventCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$__SearchEventCopyWith<$Res> {
  __$__SearchEventCopyWithImpl(
      ___SearchEvent _value, $Res Function(___SearchEvent) _then)
      : super(_value, (v) => _then(v as ___SearchEvent));

  @override
  ___SearchEvent get _value => super._value as ___SearchEvent;

  @override
  $Res call({
    Object? query = freezed,
    Object? model = freezed,
    Object? perPage = freezed,
    Object? nextPage = freezed,
    Object? callback = freezed,
  }) {
    return _then(___SearchEvent(
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
  @JsonKey()
  @override
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
            other is ___SearchEvent &&
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
  _$__SearchEventCopyWith<___SearchEvent> get copyWith =>
      __$__SearchEventCopyWithImpl<___SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModel model, AwaitCallback? callback)
        refresh,
    required TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)
        search,
    required TResult Function(SearchModel? model) clear,
  }) {
    return search(query, model, perPage, nextPage, callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModel model, AwaitCallback? callback)? refresh,
    TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)?
        search,
    TResult Function(SearchModel? model)? clear,
  }) {
    return search?.call(query, model, perPage, nextPage, callback);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshModelHistoryEvent value) refresh,
    required TResult Function(___SearchEvent value) search,
    required TResult Function(_ClearHistoryEvent value) clear,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshModelHistoryEvent value)? refresh,
    TResult Function(___SearchEvent value)? search,
    TResult Function(_ClearHistoryEvent value)? clear,
  }) {
    return search?.call(this);
  }
}

abstract class ___SearchEvent implements SearchEvent {
  const factory ___SearchEvent(String query,
      {SearchModel? model,
      int? perPage,
      bool nextPage,
      AwaitCallback? callback}) = _$___SearchEvent;

  String get query;
  SearchModel? get model;
  int? get perPage;
  bool get nextPage;
  AwaitCallback? get callback;
  @JsonKey(ignore: true)
  _$__SearchEventCopyWith<___SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearHistoryEventCopyWith<$Res> {
  factory _$ClearHistoryEventCopyWith(
          _ClearHistoryEvent value, $Res Function(_ClearHistoryEvent) then) =
      __$ClearHistoryEventCopyWithImpl<$Res>;
  $Res call({SearchModel? model});
}

/// @nodoc
class __$ClearHistoryEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$ClearHistoryEventCopyWith<$Res> {
  __$ClearHistoryEventCopyWithImpl(
      _ClearHistoryEvent _value, $Res Function(_ClearHistoryEvent) _then)
      : super(_value, (v) => _then(v as _ClearHistoryEvent));

  @override
  _ClearHistoryEvent get _value => super._value as _ClearHistoryEvent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_ClearHistoryEvent(
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
            other is _ClearHistoryEvent &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$ClearHistoryEventCopyWith<_ClearHistoryEvent> get copyWith =>
      __$ClearHistoryEventCopyWithImpl<_ClearHistoryEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchModel model, AwaitCallback? callback)
        refresh,
    required TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)
        search,
    required TResult Function(SearchModel? model) clear,
  }) {
    return clear(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchModel model, AwaitCallback? callback)? refresh,
    TResult Function(String query, SearchModel? model, int? perPage,
            bool nextPage, AwaitCallback? callback)?
        search,
    TResult Function(SearchModel? model)? clear,
  }) {
    return clear?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RefreshModelHistoryEvent value) refresh,
    required TResult Function(___SearchEvent value) search,
    required TResult Function(_ClearHistoryEvent value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RefreshModelHistoryEvent value)? refresh,
    TResult Function(___SearchEvent value)? search,
    TResult Function(_ClearHistoryEvent value)? clear,
  }) {
    return clear?.call(this);
  }
}

abstract class _ClearHistoryEvent implements SearchEvent {
  const factory _ClearHistoryEvent([SearchModel? model]) = _$_ClearHistoryEvent;

  SearchModel? get model;
  @JsonKey(ignore: true)
  _$ClearHistoryEventCopyWith<_ClearHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {bool isSearching = false,
      String? searchQuery,
      SearchModel model = SearchModel.product,
      KtList<User> users = const KtList.empty(),
      KtList<Product> products = const KtList.empty(),
      Option<AppHttpResponse?> status = const None()}) {
    return _SearchState(
      isSearching: isSearching,
      searchQuery: searchQuery,
      model: model,
      users: users,
      products: products,
      status: status,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

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
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
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
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? isSearching = freezed,
    Object? searchQuery = freezed,
    Object? model = freezed,
    Object? users = freezed,
    Object? products = freezed,
    Object? status = freezed,
  }) {
    return _then(_SearchState(
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

  @JsonKey()
  @override
  final bool isSearching;
  @override
  final String? searchQuery;
  @JsonKey()
  @override
  final SearchModel model;
  @JsonKey()
  @override //
  final KtList<User> users;
  @JsonKey()
  @override
  final KtList<Product> products;
  @JsonKey()
  @override //
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'SearchState(isSearching: $isSearching, searchQuery: $searchQuery, model: $model, users: $users, products: $products, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
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
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {bool isSearching,
      String? searchQuery,
      SearchModel model,
      KtList<User> users,
      KtList<Product> products,
      Option<AppHttpResponse?> status}) = _$_SearchState;
  const _SearchState._() : super._();

  @override
  bool get isSearching;
  @override
  String? get searchQuery;
  @override
  SearchModel get model;
  @override //
  KtList<User> get users;
  @override
  KtList<Product> get products;
  @override //
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
