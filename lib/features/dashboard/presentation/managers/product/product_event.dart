part of product_bloc.dart;

abstract class ProductEvent extends BaseBlocEvent {
  const ProductEvent();
}

class _ProductEmiiterEvent extends ProductEvent {
  final ProductState state;
  final AwaitCallback? callback;

  const _ProductEmiiterEvent(this.state, {this.callback});
}

@freezed
class ProductPageControllerEvent extends ProductEvent
    with _$ProductPageControllerEvent {
  const factory ProductPageControllerEvent.attachListener() =
      _AttachPageControllerListener;

  const factory ProductPageControllerEvent.next(
      List<dynamic> items, int index) = _OnNextPage;

  const factory ProductPageControllerEvent.prev() = _OnPreviousPage;
}
