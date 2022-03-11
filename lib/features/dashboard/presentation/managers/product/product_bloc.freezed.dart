// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of product_bloc.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductPageControllerEventTearOff {
  const _$ProductPageControllerEventTearOff();

  _AttachPageControllerListener attachListener() {
    return const _AttachPageControllerListener();
  }

  _OnNextPage next(List<dynamic> items, int index) {
    return _OnNextPage(
      items,
      index,
    );
  }

  _OnPreviousPage prev() {
    return const _OnPreviousPage();
  }
}

/// @nodoc
const $ProductPageControllerEvent = _$ProductPageControllerEventTearOff();

/// @nodoc
mixin _$ProductPageControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attachListener,
    required TResult Function(List<dynamic> items, int index) next,
    required TResult Function() prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? attachListener,
    TResult Function(List<dynamic> items, int index)? next,
    TResult Function()? prev,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageControllerEventCopyWith<$Res> {
  factory $ProductPageControllerEventCopyWith(ProductPageControllerEvent value,
          $Res Function(ProductPageControllerEvent) then) =
      _$ProductPageControllerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductPageControllerEventCopyWithImpl<$Res>
    implements $ProductPageControllerEventCopyWith<$Res> {
  _$ProductPageControllerEventCopyWithImpl(this._value, this._then);

  final ProductPageControllerEvent _value;
  // ignore: unused_field
  final $Res Function(ProductPageControllerEvent) _then;
}

/// @nodoc
abstract class _$AttachPageControllerListenerCopyWith<$Res> {
  factory _$AttachPageControllerListenerCopyWith(
          _AttachPageControllerListener value,
          $Res Function(_AttachPageControllerListener) then) =
      __$AttachPageControllerListenerCopyWithImpl<$Res>;
}

/// @nodoc
class __$AttachPageControllerListenerCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res>
    implements _$AttachPageControllerListenerCopyWith<$Res> {
  __$AttachPageControllerListenerCopyWithImpl(
      _AttachPageControllerListener _value,
      $Res Function(_AttachPageControllerListener) _then)
      : super(_value, (v) => _then(v as _AttachPageControllerListener));

  @override
  _AttachPageControllerListener get _value =>
      super._value as _AttachPageControllerListener;
}

/// @nodoc

class _$_AttachPageControllerListener implements _AttachPageControllerListener {
  const _$_AttachPageControllerListener();

  @override
  String toString() {
    return 'ProductPageControllerEvent.attachListener()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AttachPageControllerListener);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attachListener,
    required TResult Function(List<dynamic> items, int index) next,
    required TResult Function() prev,
  }) {
    return attachListener();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? attachListener,
    TResult Function(List<dynamic> items, int index)? next,
    TResult Function()? prev,
  }) {
    return attachListener?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
  }) {
    return attachListener(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
  }) {
    return attachListener?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
    required TResult orElse(),
  }) {
    if (attachListener != null) {
      return attachListener(this);
    }
    return orElse();
  }
}

abstract class _AttachPageControllerListener
    implements ProductPageControllerEvent {
  const factory _AttachPageControllerListener() =
      _$_AttachPageControllerListener;
}

/// @nodoc
abstract class _$OnNextPageCopyWith<$Res> {
  factory _$OnNextPageCopyWith(
          _OnNextPage value, $Res Function(_OnNextPage) then) =
      __$OnNextPageCopyWithImpl<$Res>;
  $Res call({List<dynamic> items, int index});
}

/// @nodoc
class __$OnNextPageCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res>
    implements _$OnNextPageCopyWith<$Res> {
  __$OnNextPageCopyWithImpl(
      _OnNextPage _value, $Res Function(_OnNextPage) _then)
      : super(_value, (v) => _then(v as _OnNextPage));

  @override
  _OnNextPage get _value => super._value as _OnNextPage;

  @override
  $Res call({
    Object? items = freezed,
    Object? index = freezed,
  }) {
    return _then(_OnNextPage(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnNextPage implements _OnNextPage {
  const _$_OnNextPage(this.items, this.index);

  @override
  final List<dynamic> items;
  @override
  final int index;

  @override
  String toString() {
    return 'ProductPageControllerEvent.next(items: $items, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnNextPage &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$OnNextPageCopyWith<_OnNextPage> get copyWith =>
      __$OnNextPageCopyWithImpl<_OnNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attachListener,
    required TResult Function(List<dynamic> items, int index) next,
    required TResult Function() prev,
  }) {
    return next(items, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? attachListener,
    TResult Function(List<dynamic> items, int index)? next,
    TResult Function()? prev,
  }) {
    return next?.call(items, index);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _OnNextPage implements ProductPageControllerEvent {
  const factory _OnNextPage(List<dynamic> items, int index) = _$_OnNextPage;

  List<dynamic> get items;
  int get index;
  @JsonKey(ignore: true)
  _$OnNextPageCopyWith<_OnNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnPreviousPageCopyWith<$Res> {
  factory _$OnPreviousPageCopyWith(
          _OnPreviousPage value, $Res Function(_OnPreviousPage) then) =
      __$OnPreviousPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnPreviousPageCopyWithImpl<$Res>
    extends _$ProductPageControllerEventCopyWithImpl<$Res>
    implements _$OnPreviousPageCopyWith<$Res> {
  __$OnPreviousPageCopyWithImpl(
      _OnPreviousPage _value, $Res Function(_OnPreviousPage) _then)
      : super(_value, (v) => _then(v as _OnPreviousPage));

  @override
  _OnPreviousPage get _value => super._value as _OnPreviousPage;
}

/// @nodoc

class _$_OnPreviousPage implements _OnPreviousPage {
  const _$_OnPreviousPage();

  @override
  String toString() {
    return 'ProductPageControllerEvent.prev()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnPreviousPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() attachListener,
    required TResult Function(List<dynamic> items, int index) next,
    required TResult Function() prev,
  }) {
    return prev();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? attachListener,
    TResult Function(List<dynamic> items, int index)? next,
    TResult Function()? prev,
  }) {
    return prev?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AttachPageControllerListener value)
        attachListener,
    required TResult Function(_OnNextPage value) next,
    required TResult Function(_OnPreviousPage value) prev,
  }) {
    return prev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
  }) {
    return prev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AttachPageControllerListener value)? attachListener,
    TResult Function(_OnNextPage value)? next,
    TResult Function(_OnPreviousPage value)? prev,
    required TResult orElse(),
  }) {
    if (prev != null) {
      return prev(this);
    }
    return orElse();
  }
}

abstract class _OnPreviousPage implements ProductPageControllerEvent {
  const factory _OnPreviousPage() = _$_OnPreviousPage;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _ProductState call(
      {bool isLoading = false,
      bool validate = false,
      required Product product,
      required PageController controller,
      int currentIndex = ProductState.kInitialPage,
      required MoneyMaskedTextController basePriceController,
      required MoneyMaskedTextController itemPriceController,
      Option<AppHttpResponse?> status = const None()}) {
    return _ProductState(
      isLoading: isLoading,
      validate: validate,
      product: product,
      controller: controller,
      currentIndex: currentIndex,
      basePriceController: basePriceController,
      itemPriceController: itemPriceController,
      status: status,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validate => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  PageController get controller => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  MoneyMaskedTextController get basePriceController =>
      throw _privateConstructorUsedError;
  MoneyMaskedTextController get itemPriceController =>
      throw _privateConstructorUsedError;
  Option<AppHttpResponse?> get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      Product product,
      PageController controller,
      int currentIndex,
      MoneyMaskedTextController basePriceController,
      MoneyMaskedTextController itemPriceController,
      Option<AppHttpResponse?> status});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? product = freezed,
    Object? controller = freezed,
    Object? currentIndex = freezed,
    Object? basePriceController = freezed,
    Object? itemPriceController = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      basePriceController: basePriceController == freezed
          ? _value.basePriceController
          : basePriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      itemPriceController: itemPriceController == freezed
          ? _value.itemPriceController
          : itemPriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      Product product,
      PageController controller,
      int currentIndex,
      MoneyMaskedTextController basePriceController,
      MoneyMaskedTextController itemPriceController,
      Option<AppHttpResponse?> status});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? validate = freezed,
    Object? product = freezed,
    Object? controller = freezed,
    Object? currentIndex = freezed,
    Object? basePriceController = freezed,
    Object? itemPriceController = freezed,
    Object? status = freezed,
  }) {
    return _then(_ProductState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validate: validate == freezed
          ? _value.validate
          : validate // ignore: cast_nullable_to_non_nullable
              as bool,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PageController,
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      basePriceController: basePriceController == freezed
          ? _value.basePriceController
          : basePriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      itemPriceController: itemPriceController == freezed
          ? _value.itemPriceController
          : itemPriceController // ignore: cast_nullable_to_non_nullable
              as MoneyMaskedTextController,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<AppHttpResponse?>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {this.isLoading = false,
      this.validate = false,
      required this.product,
      required this.controller,
      this.currentIndex = ProductState.kInitialPage,
      required this.basePriceController,
      required this.itemPriceController,
      this.status = const None()});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool validate;
  @override
  final Product product;
  @override
  final PageController controller;
  @JsonKey()
  @override
  final int currentIndex;
  @override
  final MoneyMaskedTextController basePriceController;
  @override
  final MoneyMaskedTextController itemPriceController;
  @JsonKey()
  @override
  final Option<AppHttpResponse?> status;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, validate: $validate, product: $product, controller: $controller, currentIndex: $currentIndex, basePriceController: $basePriceController, itemPriceController: $itemPriceController, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.validate, validate) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller) &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality()
                .equals(other.basePriceController, basePriceController) &&
            const DeepCollectionEquality()
                .equals(other.itemPriceController, itemPriceController) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(validate),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(controller),
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(basePriceController),
      const DeepCollectionEquality().hash(itemPriceController),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {bool isLoading,
      bool validate,
      required Product product,
      required PageController controller,
      int currentIndex,
      required MoneyMaskedTextController basePriceController,
      required MoneyMaskedTextController itemPriceController,
      Option<AppHttpResponse?> status}) = _$_ProductState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  Product get product;
  @override
  PageController get controller;
  @override
  int get currentIndex;
  @override
  MoneyMaskedTextController get basePriceController;
  @override
  MoneyMaskedTextController get itemPriceController;
  @override
  Option<AppHttpResponse?> get status;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
