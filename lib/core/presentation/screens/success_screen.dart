library success_screen.dart;

import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// A stateful widget to render SuccessScreen.
class SuccessScreen extends StatefulWidget with AutoRouteWrapper {
  final Widget? svg;
  final Widget? image;
  final String title;
  final String? description;
  final String? buttonText;
  final Duration animationDuration;
  final BoxFit fit;
  final double? width;
  final double? height;
  final VoidCallback? onButtonPressed;
  final VoidCallback? onBackPressed;
  final bool hasAppBar;

  const SuccessScreen({
    Key? key,
    this.svg,
    this.image,
    required this.title,
    this.description,
    this.buttonText,
    this.animationDuration = const Duration(milliseconds: 1600),
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.onButtonPressed,
    this.onBackPressed,
    this.hasAppBar = false,
  })  : assert((svg != null && image == null) ||
            (svg == null && image != null) ||
            (svg == null && image == null)),
        super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _SuccessScreenState extends State<SuccessScreen>
    with
        SingleTickerProviderStateMixin<SuccessScreen>,
        AutomaticKeepAliveClientMixin<SuccessScreen> {
  late AnimationController lottieAnim;

  @override
  void dispose() {
    lottieAnim.dispose();
    super.dispose();
  }

  @override
  void initState() {
    lottieAnim = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      adaptiveToolbar: widget.hasAppBar ? const AdaptiveToolbar() : null,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(App.sidePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Builder(builder: (_) {
                  if (widget.image != null)
                    return Image.asset(
                      '${widget.image}',
                      width: widget.width,
                      height: widget.height,
                      fit: BoxFit.contain,
                    );
                  if (widget.svg != null) return widget.svg!;
                  return Utils.nothing;
                }),
              ),
              //
              VerticalSpace(height: 0.06.sw),
              //
              Align(
                alignment: Alignment.center,
                child: AdaptiveText(
                  '${widget.title}',
                  fontWeight: FontWeight.w600,
                  fontSize: 22.sp,
                  letterSpacing: Utils.letterSpacing,
                  textAlign: TextAlign.center,
                ),
              ),
              //
              ...widget.description?.let((it) => [
                        VerticalSpace(height: 0.04.sw),
                        //
                        Align(
                          alignment: Alignment.center,
                          child: AdaptiveText(
                            '${widget.description}',
                            fontSize: 18.sp,
                            textAlign: TextAlign.center,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ),
                      ]) ??
                  [Utils.nothing],
              //
              VerticalSpace(height: 0.08.sw),
              //
              widget.buttonText?.let(
                    (it) => AppButton(
                      text: widget.buttonText,
                      onPressed: widget.onButtonPressed,
                    ),
                  ) ??
                  Utils.nothing,
              //
            ],
          ),
        ),
      ),
    );
  }
}
