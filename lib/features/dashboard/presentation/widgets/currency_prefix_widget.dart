library currency_prefix_widget.dart;

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/features/auth/presentation/managers/managers.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render CurrencyPrefixWidget.
class CurrencyPrefixWidget extends StatelessWidget {
  const CurrencyPrefixWidget({Key? key}) : super(key: key);

  Country? get currencyIcon => navigator.navigatorKey.currentContext?.let((it) => it.read<AuthWatcherCubit>().state.user?.country);

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
                currencyIcon?.symbol ?? '${Const.defaultCurrencyIcon}',
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
