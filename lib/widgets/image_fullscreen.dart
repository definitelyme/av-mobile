library image_fullscreen.dart;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';

/// A stateless widget to render ImageFullscreen.
class ImageFullscreen extends StatefulWidget {
  final bool backgroundIsTransparent;
  final bool containMinScale;
  final Object? heroTag;
  final ImageProvider imageProvider;
  final double? initialScale;
  final double? maxScale;
  final double? minScale;

  const ImageFullscreen({
    Key? key,
    required this.imageProvider,
    required this.heroTag,
    this.minScale,
    this.maxScale,
    this.initialScale,
    this.containMinScale = true,
    this.backgroundIsTransparent = true,
  }) : super(key: key);

  @override
  State<ImageFullscreen> createState() => _ImageFullscreenState();
}

class _ImageFullscreenState extends State<ImageFullscreen> {
  dynamic get initialScale => widget.initialScale ?? PhotoViewComputedScale.contained;
  dynamic get maxScale => widget.maxScale ?? PhotoViewComputedScale.covered * 2.0;
  dynamic get minScale => widget.containMinScale || widget.minScale == null ? PhotoViewComputedScale.contained : widget.minScale;
  bool canPan = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(App.customSystemOverlay(ctx: context, ios: Brightness.dark, android: Brightness.light));

    return PhotoView(
      imageProvider: widget.imageProvider,
      backgroundDecoration: BoxDecoration(
        color: App.resolveColor(Colors.transparent, dark: Colors.black87.withOpacity(0.9), ctx: context),
      ),
      initialScale: initialScale,
      disableGestures: false,
      enablePanAlways: canPan,
      gestureDetectorBehavior: HitTestBehavior.opaque,
      minScale: minScale,
      maxScale: maxScale,
      scaleStateChangedCallback: (state) {
        setState(() => canPan = state == PhotoViewScaleState.zoomedIn);
      },
      gaplessPlayback: true,
      heroAttributes: widget.heroTag != null ? PhotoViewHeroAttributes(tag: widget.heroTag!, transitionOnUserGestures: true) : null,
      loadingBuilder: (_, chunk) => CircularProgressBar.adaptive(
        height: 30,
        width: 30,
        strokeWidth: 1.5,
        value: chunk != null ? (chunk.cumulativeBytesLoaded / (chunk.expectedTotalBytes?.toDouble() ?? 1)) : 0,
      ),
    );
  }
}
