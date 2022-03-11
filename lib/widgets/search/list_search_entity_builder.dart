part of full_search_page.dart;

class ListSearchEntityBuilder<E extends BaseEntity> extends StatefulWidget {
  final String? name;
  final int tabIndex;

  /// Builder for the list item
  final Widget Function(BuildContext, E) builder;

  /// Widget built when there's no item in [items] that
  /// matches current query.
  final Widget Function(BuildContext, String?)? onFailureText;

  /// List of Entities to be displayed
  final KtList<E> entities;
  final double? verticalGap;
  final EdgeInsets? padding;
  final void Function(DragToRefreshState)? onLoadMore;

  final String Function(int)? titleCountBuilder;

  final bool showCountBuilder;

  final bool showFailure;

  const ListSearchEntityBuilder({
    Key? key,
    this.name,
    required this.tabIndex,
    required this.builder,
    required this.entities,
    this.titleCountBuilder,
    this.onFailureText,
    this.verticalGap,
    this.padding,
    this.onLoadMore,
    this.showCountBuilder = true,
    this.showFailure = true,
  }) : super(key: key);

  @override
  _ListSearchEntityBuilderState<E> createState() =>
      _ListSearchEntityBuilderState();
}

class _ListSearchEntityBuilderState<E extends BaseEntity>
    extends State<ListSearchEntityBuilder<E>> {
  double get _verticalgap => widget.verticalGap ?? 0.015;

  String get _countBuilder =>
      widget.titleCountBuilder?.call(widget.entities.size) ??
      '${widget.entities.size} Results Found';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: widget.entities.isEmpty()
          ? widget.showFailure
              ? (widget.onFailureText?.call(context, widget.name) ??
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppAssets.featherSearch(const Size(120, 120)),
                        //
                        0.02.verticalh,
                        //
                        AdaptiveText.rich(
                          TextSpan(children: [
                            const TextSpan(text: 'No Result Found'),
                            if (widget.name != null) ...[
                              const TextSpan(text: ' In '),
                              TextSpan(
                                  text: '${widget.name}',
                                  style: const TextStyle(
                                      color: Palette.accentColor)),
                            ],
                          ]),
                          maxLines: 1,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                          letterSpacing: Utils.labelLetterSpacing,
                        ),
                      ],
                    ),
                  ))
              : Utils.nothing
          : DragToRefresh(
              initialRefresh: false,
              enablePullDown: false,
              enablePullUp: true,
              onLoading: widget.onLoadMore,
              child: CustomScrollView(
                key: widget.name != null
                    ? PageStorageKey<String>(widget.name!)
                    : null,
                primary: true,
                shrinkWrap: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  if (widget.showCountBuilder && widget.entities.isNotEmpty())
                    SliverPadding(
                      padding: EdgeInsets.symmetric(vertical: 0.01.h)
                          .merge(widget.padding),
                      sliver: SliverToBoxAdapter(
                        child: AdaptiveText(
                          _countBuilder,
                          maxLines: 1,
                          softWrap: false,
                          wrapWords: false,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.left,
                          letterSpacing: Utils.letterSpacing,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  //
                  SliverPadding(
                    padding: widget.padding ?? EdgeInsets.zero,
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, i) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            widget.builder(context, widget.entities.get(i)),
                            //
                            _verticalgap.verticalh,
                          ],
                        ),
                        childCount: widget.entities.size,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
