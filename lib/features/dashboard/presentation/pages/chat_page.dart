library chat_page.dart;

import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateful widget to render ChatPage.
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: Palette.accentColor,
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Chats',
        titleStyle: App.titleStyle,
        elevation: 0,
        showCupertinoCustomLeading: false,
        showMaterialCustomLeading: false,
        implyLeading: false,
        centerTitle: true,
        backgroundColor: App.platform.cupertino(Palette.accentColor),
        cupertinoImplyLeading: false,
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
        actions: [
          // ...Utils.platform_(
          //   cupertino: [Center(child: AdaptiveText('Chats', maxLines: 1, style: App.titleStyle))],
          //   material: [Utils.nothing],
          // )!,
        ],
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
              child: const SearchWidget(),
            ),
            //
            0.02.verticalh,
            //
            Expanded(
              child: Material(
                color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                child: DragToRefresh(
                  initialRefresh: true,
                  enablePullUp: true,
                  // onRefresh: onRefresh,
                  // onLoading: onLoadMore,
                  child: CustomScrollView(
                    primary: false,
                    physics: Utils.physics,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate.fixed([
                          0.1.verticalh,
                          //
                          Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppAssets.comingSoon,
                                //
                                AdaptiveText(
                                  'Coming soon!',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
