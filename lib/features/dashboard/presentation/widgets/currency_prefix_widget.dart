library currency_prefix_widget.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render CurrencyPrefixWidget.
class CurrencyPrefixWidget extends StatelessWidget {
  final String currency;

  const CurrencyPrefixWidget(this.currency, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 1, 4, 1),
      child: SizedBox(
        width: 35,
        height: 40,
        child: Material(
          color: App.resolveColor(Colors.white, dark: Palette.cardColorDark),
          borderRadius: App.platform.material(const BorderRadius.only(
            topLeft: Radius.circular(Utils.inputBorderRadius),
            bottomLeft: Radius.circular(Utils.inputBorderRadius),
          )),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Theme.of(context).dividerColor, width: 1.2)),
            ),
            child: Center(
              child: AdaptiveText(
                currency,
                isDefault: true,
                maxLines: 1,
                wrapWords: false,
                softWrap: false,
                fontSize: 20.sp,
                maxFontSize: 16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
