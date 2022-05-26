library image_box.dart;

import 'dart:io';
import 'dart:typed_data';

import 'package:auctionvillage/core/domain/entities/entities.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum _ImageType { asset, network, file, memory }

/// A stateless widget to render ImageBox.
class ImageBox extends StatefulWidget {
  final _ImageType _type;

  final List<Widget> Function(Widget)? stackChildren;
  final void Function(ImageProvider?)? onPressed;
  final bool applyConstraintToReplacement;
  final BorderRadius? borderRadius;
  final BoxBorder? boxBorder;
  final Uint8List? bytes;
  final double elevation;
  final Widget? errorReplacement;
  final bool expandsFullscreen;
  final File? file;
  final BoxFit fit;
  final double height;
  final Object? heroTag;
  final bool? materialInkWell;
  final String? photo;
  final Widget replacement;
  final String? replacementAsset;
  final ShapeBorder? shapeBorder;
  final AlignmentGeometry stackAlignment;
  final Clip stackClip;
  final StackFit stackFit;
  final bool useDefaultRadius;
  final double width;

  const ImageBox.asset({
    Key? key,
    this.heroTag,
    double? width,
    double? height,
    this.fit = BoxFit.cover,
    required this.photo,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement = Utils.nothing,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.useDefaultRadius = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.onPressed,
  })  : width = width ?? double.infinity,
        height = height ?? double.infinity,
        _type = _ImageType.asset,
        replacementAsset = null,
        file = null,
        bytes = null,
        super(key: key);

  const ImageBox.file({
    Key? key,
    this.heroTag,
    double? width,
    double? height,
    this.fit = BoxFit.cover,
    required this.file,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement = Utils.nothing,
    this.replacementAsset,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.useDefaultRadius = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.onPressed,
  })  : width = width ?? double.infinity,
        height = height ?? double.infinity,
        _type = _ImageType.file,
        photo = null,
        bytes = null,
        super(key: key);

  const ImageBox.memory({
    Key? key,
    this.heroTag,
    double? width,
    double? height,
    this.fit = BoxFit.cover,
    required this.bytes,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement = Utils.nothing,
    this.replacementAsset,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.useDefaultRadius = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.onPressed,
  })  : width = width ?? double.infinity,
        height = height ?? double.infinity,
        _type = _ImageType.memory,
        file = null,
        photo = null,
        super(key: key);

  const ImageBox.network({
    Key? key,
    this.heroTag,
    double? width,
    double? height,
    this.fit = BoxFit.cover,
    required this.photo,
    this.elevation = 0.0,
    this.boxBorder,
    this.shapeBorder,
    this.borderRadius,
    this.replacement = Utils.nothing,
    this.replacementAsset,
    this.errorReplacement,
    this.applyConstraintToReplacement = true,
    this.useDefaultRadius = true,
    this.expandsFullscreen = false,
    this.stackChildren,
    this.stackAlignment = AlignmentDirectional.topStart,
    this.stackFit = StackFit.loose,
    this.stackClip = Clip.hardEdge,
    this.materialInkWell,
    this.onPressed,
  })  : width = width ?? double.infinity,
        height = height ?? double.infinity,
        _type = _ImageType.network,
        file = null,
        bytes = null,
        super(key: key);

  @override
  State<ImageBox> createState() => _ImageBoxState();

  ImageProvider? provider([String? photo, File? file, Uint8List? bytes]) => _type.when(
        asset: photo?.let((it) => AssetImage(it)),
        file: file?.let((it) => FileImage(it)),
        memory: bytes?.let((it) => MemoryImage(it)),
        network: photo?.let(
          (it) => CachedNetworkImageProvider(
            it,
            maxHeight: height == double.infinity ? null : height.ceil(),
            maxWidth: width == double.infinity ? null : width.ceil(),
          ),
        ),
      );
}

class _ImageBoxState extends State<ImageBox> with AutomaticKeepAliveClientMixin<ImageBox> {
  @override
  bool get wantKeepAlive => true;

  Object? get _heroTag => widget.heroTag ?? UniqueId.v4().value;
  BoxConstraints get constraints => BoxConstraints(minWidth: widget.width, minHeight: widget.height);
  Widget get replacement =>
      widget.replacementAsset?.let((it) => _imageBuilder(AssetImage(it))) ??
      (widget.applyConstraintToReplacement ? ConstrainedBox(constraints: constraints, child: widget.replacement) : widget.replacement);

  Widget _image(ImageProvider provider) => Image(
        width: widget.width,
        height: widget.height,
        image: provider,
        fit: widget.fit,
        isAntiAlias: true,
      );

  Widget _imageBuilder(ImageProvider provider) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: DecoratedBox(
        decoration: BoxDecoration(borderRadius: widget.borderRadius, border: widget.boxBorder),
        child: ClipRRect(
          borderRadius: widget.borderRadius ?? (widget.useDefaultRadius ? 8.br : null),
          clipBehavior: Clip.hardEdge,
          child: MyHero(
            tag: widget.expandsFullscreen ? _heroTag : null,
            borderRadius: widget.borderRadius,
            type: MaterialType.transparency,
            elevation: widget.elevation,
            shape: widget.shapeBorder,
            child: AdaptiveInkWell(
              material: widget.materialInkWell,
              onTap: widget.expandsFullscreen
                  ? () => DismissibleScreen.navigate(
                        context,
                        previousRouteName: navigator.current.name,
                        useRootNavigator: true,
                        dismissDirection: DismissibleDirection.vertical,
                        child: ImageFullscreen(imageProvider: provider, heroTag: _heroTag),
                      )
                  : widget.onPressed != null
                      ? () => widget.onPressed?.call(provider)
                      : null,
              child: widget.stackChildren != null
                  ? Stack(
                      alignment: widget.stackAlignment,
                      clipBehavior: widget.stackClip,
                      fit: widget.stackFit,
                      children: widget.stackChildren!.call(_image(provider)),
                    )
                  : _image(provider),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    var provider = widget.provider(widget.photo, widget.file, widget.bytes);

    return widget._type.when(
      asset: provider != null ? _imageBuilder(provider) : replacement,
      file: provider != null ? _imageBuilder(provider) : replacement,
      memory: provider != null ? _imageBuilder(provider) : replacement,
      network: widget.photo?.let(
            (it) => CachedNetworkImage(
              imageUrl: it,
              fit: widget.fit,
              width: widget.width,
              height: widget.height,
              imageBuilder: (context, provider) => _imageBuilder(provider),
              errorWidget: (_, url, error) => widget.errorReplacement ?? replacement,
              progressIndicatorBuilder: (_, url, download) => ConstrainedBox(
                constraints: constraints,
                child: Center(
                  child: CircularProgressBar.adaptive(
                    value: download.progress,
                    strokeWidth: 2,
                    width: 25,
                    height: 25,
                  ),
                ),
              ),
            ),
          ) ??
          replacement,
    );
  }
}

extension on _ImageType {
  T when<T>({
    required T asset,
    required T network,
    required T file,
    required T memory,
  }) {
    switch (this) {
      case _ImageType.asset:
        return asset;
      case _ImageType.network:
        return network;
      case _ImageType.file:
        return file;
      case _ImageType.memory:
        return memory;
    }
  }
}
