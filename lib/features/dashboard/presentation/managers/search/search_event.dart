part of search_bloc.dart;

abstract class _SearchEvent extends BaseSearchEvent {
  const _SearchEvent();
}

class SearchEmitterEvent extends _SearchEvent {
  final AwaitCallback? callback;
  final SearchState state;

  const SearchEmitterEvent(this.state, {this.callback});
}

@immutable
@Freezed(maybeMap: false, maybeWhen: false)
class SearchEvent extends _SearchEvent with _$SearchEvent {
  const factory SearchEvent.refresh(
    SearchModel model, {
    AwaitCallback? callback,
  }) = _RefreshModelHistoryEvent;

  const factory SearchEvent.search(
    String query, {
    SearchModel? model,
    int? perPage,
    @Default(false) bool nextPage,
    AwaitCallback? callback,
  }) = ___SearchEvent;

  const factory SearchEvent.clear([SearchModel? model]) = _ClearHistoryEvent;
}
