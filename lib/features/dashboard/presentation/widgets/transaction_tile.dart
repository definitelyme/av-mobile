library transaction_tile.dart;

import 'package:auctionvillage/features/dashboard/domain/index.dart';
import 'package:auctionvillage/features/dashboard/presentation/widgets/index.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render TransactionTile.
class TransactionTile extends StatelessWidget {
  final IndicatorType _type;

  final ActivityStatus status;
  final VoidCallback? onPressed;
  final String? subtitle;
  final String? title;
  final DateTime? createdAt;
  final bool showLeading;

  const TransactionTile._(this.title, this.subtitle, this.status, this.createdAt, this.showLeading, this.onPressed, this._type);

  const TransactionTile.down({
    String? title,
    String? subtitle,
    required ActivityStatus status,
    DateTime? createdAt,
    VoidCallback? onPressed,
    bool showLeading = true,
  }) : this._(title, subtitle, status, createdAt, showLeading, onPressed, IndicatorType.down);

  const TransactionTile.up({
    String? title,
    String? subtitle,
    required ActivityStatus status,
    DateTime? createdAt,
    VoidCallback? onPressed,
    bool showLeading = true,
  }) : this._(title, subtitle, status, createdAt, showLeading, onPressed, IndicatorType.up);

  Widget get _title => AdaptiveText(
        '$title',
        maxLines: 1,
        minFontSize: 16,
        fontSize: 17.sp,
        textColor: const Color(0xff58595B),
        fontWeight: FontWeight.w600,
        textAlign: TextAlign.left,
        textColorDark: Palette.text100Dark,
        overflow: TextOverflow.ellipsis,
      );

  Widget get _subtitle => AdaptiveText(
        '$subtitle',
        maxLines: 1,
        minFontSize: 14,
        fontSize: 14.sp,
        textColor: const Color(0xff58595B),
        fontWeight: FontWeight.w500,
        textAlign: TextAlign.left,
        textColorDark: Palette.text100Dark.withOpacity(0.7),
        overflow: TextOverflow.ellipsis,
      );

  Widget get _leading => Material(
        color: _type.when(up: const Color(0xFF2E2A88), down: Palette.accentGreen).withOpacity(0.1),
        borderRadius: 8.br,
        child: SizedBox(
          width: 40,
          height: 40,
          child: RotatedBox(
            quarterTurns: _type.when(up: 1, down: 3),
            child: Icon(
              Icons.keyboard_backspace_rounded,
              color: _type.when(up: const Color(0xFF2E2A88), down: Palette.accentGreen),
            ),
          ),
        ),
      );

  Widget _trailing(BuildContext c) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              color: status.bgColor,
              borderRadius: 100.br,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: AdaptiveText(
                '${status.value}',
                maxLines: 1,
                fontSize: 14.sp,
                textColor: status.color,
                textAlign: TextAlign.right,
              ),
            ),
          ),
          //
          if (createdAt != null) AdaptiveText('${TimeOfDay.fromDateTime(createdAt!).format(c)}'),
        ],
      );

  @override
  Widget build(BuildContext context) {
    if (!showLeading)
      return AdaptiveListTile(
        dense: true,
        noCupertinoBorder: true,
        contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
        horizontalTitleGap: 10,
        onTap: onPressed,
        title: _title,
        subtitle: _subtitle,
        trailing: _trailing(context),
      );

    return AdaptiveListTile(
      dense: true,
      noCupertinoBorder: true,
      contentPadding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      horizontalTitleGap: 10,
      onTap: onPressed,
      title: _title,
      subtitle: _subtitle,
      leading: _leading,
      trailing: _trailing(context),
    );
  }
}
