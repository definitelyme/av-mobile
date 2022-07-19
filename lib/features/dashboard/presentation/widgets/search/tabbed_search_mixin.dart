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
        label: 'Deals, Bids, Products..',
        tabs: ['Bids', 'Poeple'],
        bloc: () => searchBloc,
        navigationCubit: (ticker, length) {
          _searchNavCubit ??= getIt<TabNavigationCubit>().initTabbar(ticker, length: length)..addTabListener(tabListener);
          return searchNavCubit!;
        },
        onQueryUpdate: (query) async {
          WidgetsBinding.instance.addPostFrameCallback((_) => searchFieldController.text = query);

          if (query.isEmpty)
            searchBloc.add(SearchEvent.clear(searchBloc.state.model));
          else {
            if (query.length > 1) searchBloc.add(SearchEvent.search(query));
          }
        },
        tabView: (query) => [
          BlocListener<SearchBloc, SearchState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
            listener: (c, s) => s.status.fold(
              () => null,
              (it) => it?.response.map(
                info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
                error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
                success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(),
              ),
            ),
            child: BlocSelector<SearchBloc, SearchState, KtList<Deal>>(
              selector: (s) => s.deals,
              builder: (_, deals) => Theme(
                data: Theme.of(context),
                child: ListSearchEntityBuilder<Deal>(
                  name: 'Bids',
                  tabIndex: 0,
                  entities: deals,
                  showFailure: (query != null && query.isNotEmpty) && deals.isEmpty(),
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  onLoadMore: (p0) async {
                    searchBloc.add(SearchEvent.search(
                      query ?? '',
                      model: SearchModel.product,
                      nextPage: true,
                      callback: (_) => p0.controller.loadComplete(),
                    ));
                  },
                  builder: (c, it, index) => ProductCard(it, index: index),
                ),
              ),
            ),
          ),
          //
          BlocListener<SearchBloc, SearchState>(
            listenWhen: (p, c) =>
                p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
                (c.status.getOrElse(() => null) != null && (c.status.getOrElse(() => null)!.response.maybeMap(orElse: () => false))),
            listener: (c, s) => s.status.fold(
              () => null,
              (it) => it?.response.map(
                info: (i) => PopupDialog.info(message: i.message, show: i.message.isNotEmpty).render(),
                error: (f) => PopupDialog.error(message: f.message, show: f.show && f.message.isNotEmpty).render(),
                success: (s) => PopupDialog.success(message: s.message, show: s.message.isNotEmpty).render(),
              ),
            ),
            child: BlocSelector<SearchBloc, SearchState, KtList<User>>(
              selector: (s) => s.users,
              builder: (c, stores) => Theme(
                data: Theme.of(context),
                child: ListSearchEntityBuilder<User>(
                  name: 'People',
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
                  builder: (c, it, index) => AdaptiveText('${it.fullName}'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void tabListener();
}
