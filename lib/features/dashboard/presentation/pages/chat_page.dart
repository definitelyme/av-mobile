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
        showCustomLeading: false,
        implyLeading: false,
        centerTitle: true,
        cupertinoImplyLeading: false,
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.light, ios: Brightness.light),
        actions: [
          ...Utils.platform_(
            cupertino: [Center(child: AdaptiveText('Live Action', maxLines: 1, style: App.titleStyle))],
            material: [Utils.nothing],
          )!,
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
                    slivers: [],
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
