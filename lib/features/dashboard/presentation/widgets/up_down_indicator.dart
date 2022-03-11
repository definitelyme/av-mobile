library up_down_indicator.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/material.dart';

enum IndicatorType { up, down }

/// A stateless widget to render UpDownIndicator.
class UpDownIndicator extends StatelessWidget {
  final IndicatorType _type;

  final String? description;
  final VoidCallback? onPressed;
  final double progress;
  final String? value;

  const UpDownIndicator._(
      this.progress, this.value, this.description, this.onPressed, this._type);

  const UpDownIndicator.down({
    required double progress,
    String? value,
    String? description,
    VoidCallback? onPressed,
  }) : this._(progress, value, description, onPressed, IndicatorType.down);

  const UpDownIndicator.up({
    required double progress,
    String? value,
    String? description,
    VoidCallback? onPressed,
  }) : this._(progress, value, description, onPressed, IndicatorType.up);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        shape: RoundedRectangleBorder(
          borderRadius: 5.br,
          side: const BorderSide(color: Color(0xffE7E7E7)),
        ),
        child: AdaptiveInkWell(
          onTap: onPressed,
          borderRadius: 5.br,
          child: Padding(
            padding: EdgeInsets.all(App.sidePadding * 0.9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: _type.when(
                        up: const Color(0xff91C73C),
                        down: const Color(0xffC7513C)),
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 2.5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AdaptiveText.rich(
                          TextSpan(children: [
                            TextSpan(text: '${progress.roundToIntOrDouble}'),
                            const TextSpan(text: '%'),
                          ]),
                          maxLines: 1,
                          fontSize: 14.sp,
                          maxFontSize: 15,
                          textColor: Colors.white,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                        ),
                        const Icon(Icons.keyboard_arrow_up,
                            color: Colors.white, size: 20),
                      ],
                    ),
                  ),
                ),
                //
                0.01.verticalh,
                //
                AdaptiveText(
                  '$value',
                  maxLines: 1,
                  fontSize: 21.sp,
                  maxFontSize: 22,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.left,
                ),
                //
                0.007.verticalh,
                //
                AdaptiveText(
                  '$description',
                  maxLines: 1,
                  fontSize: 16.sp,
                  maxFontSize: 17,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension IndicatorTypeX on IndicatorType {
  T when<T>({
    required T up,
    required T down,
  }) {
    switch (this) {
      case IndicatorType.up:
        return up;
      case IndicatorType.down:
        return down;
    }
  }
}
