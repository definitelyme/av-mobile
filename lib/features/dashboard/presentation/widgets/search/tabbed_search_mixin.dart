part of search_widget.dart;

mixin TabbedSearchMixin {
  SearchBloc? _searchBloc;
  TabNavigationCubit? _searchNavCubit;

  BuildContext get context;
  SearchBloc get searchBloc => _searchBloc ??= getIt<SearchBloc>();
  TextEditingController get searchFieldController;
  TabNavigationCubit? get searchNavCubit => _searchNavCubit;

  void showFullSearch() async {
    await showSearch(
      context: context,
      useRootNavigator: true,
      query: '${searchBloc.state.searchQuery ?? ''}',
      delegate: FullSearch.tabbed(
        inputDecorationTheme: Theme.of(context).inputDecorationTheme,
        label: 'Stores, Food..',
        tabs: ['Bids', 'Poeple'],
        bloc: () => searchBloc,
        navigationCubit: (ticker, length) {
          _searchNavCubit ??= getIt<TabNavigationCubit>().initTabbar(ticker, length: length)..addTabListener(tabListener);
          return searchNavCubit!;
        },
        onQueryUpdate: (query) async {
          WidgetsBinding.instance!.addPostFrameCallback((_) => searchFieldController.text = query);

          if (query.isEmpty)
            searchBloc.add(SearchEvent.clear(searchBloc.state.model));
          else {
            if (query.length > 1) searchBloc.add(SearchEvent.search(query));
          }
        },
        tabView: (query) => [
          BlocSelector<SearchBloc, SearchState, KtList<Product>>(
            selector: (s) => s.products,
            builder: (_, tops) => Theme(
              data: Theme.of(context),
              child: ListSearchEntityBuilder<Product>(
                name: 'Bids',
                tabIndex: 0,
                entities: tops,
                showFailure: (query != null && query.isNotEmpty) && tops.isEmpty(),
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                onLoadMore: (p0) async {
                  searchBloc.add(SearchEvent.search(
                    query ?? '',
                    model: SearchModel.product,
                    nextPage: true,
                    callback: (_) => p0.controller.loadComplete(),
                  ));
                },
                builder: (c, it) => AdaptiveText('some text here'),
              ),
            ),
          ),
          //
          BlocSelector<SearchBloc, SearchState, KtList<User>>(
            selector: (s) => s.users,
            builder: (c, stores) => Theme(
              data: Theme.of(context),
              child: ListSearchEntityBuilder<User>(
                name: 'Stores',
                tabIndex: 1,
                entities: stores,
                showFailure: (query != null && query.isNotEmpty) && stores.isEmpty(),
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                onLoadMore: (p0) async {
                  searchBloc.add(SearchEvent.search(
                    query ?? '',
                    model: SearchModel.user,
                    nextPage: true,
                    callback: (_) => p0.controller.loadComplete(),
                  ));
                },
                builder: (c, it) => AdaptiveText('${it.fullName}'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void tabListener();
}
