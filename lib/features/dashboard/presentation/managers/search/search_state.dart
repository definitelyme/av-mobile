part of search_bloc.dart;

@immutable
@Freezed(maybeMap: false, maybeWhen: false)
class SearchState extends BaseSearchState with _$SearchState {
  const factory SearchState({
    @Default(false) bool isSearching,
    String? searchQuery,
    @Default(SearchModel.product) SearchModel model,
    //
    @Default(KtList.empty()) KtList<User> users,
    @Default(KtList.empty()) KtList<Product> products,
    //
    @Default(None()) Option<AppHttpResponse?> status,
  }) = _SearchState;

  const SearchState._();

  factory SearchState.initial() => const SearchState();
}
