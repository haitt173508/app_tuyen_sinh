import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BaseNetworkImage extends CachedNetworkImage {
  BaseNetworkImage({
    required String? imageUrl,
    super.key,
    super.height,
    super.width,
    super.httpHeaders,
    super.imageBuilder,
    super.placeholder,
    super.progressIndicatorBuilder,
    super.fadeOutDuration = const Duration(milliseconds: 1000),
    super.fadeOutCurve = Curves.easeOut,
    super.fadeInDuration = const Duration(milliseconds: 500),
    super.fadeInCurve = Curves.easeIn,
    super.fit,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.matchTextDirection = false,
    super.cacheManager,
    super.useOldImageOnUrlChange = false,
    super.color,
    super.filterQuality = FilterQuality.low,
    super.colorBlendMode,
    super.placeholderFadeInDuration,
    super.memCacheWidth,
    super.memCacheHeight,
    super.cacheKey,
    super.maxWidthDiskCache,
    super.maxHeightDiskCache,
    super.errorWidget,
    this.generalErrorWidget,
    this.shape,
  }) : super(imageUrl: imageUrl ?? '');

  final Widget? generalErrorWidget;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    var isValidUrl = Uri.tryParse(super.imageUrl)?.hasAbsolutePath ?? false;
    var err = generalErrorWidget ??
        SvgPicture.asset(
          AssetManager.svgNoImage,
          fit: BoxFit.contain,
        );
    return Container(
      decoration: shape != null
          ? ShapeDecoration(
              shape: shape!,
            )
          : null,
      height: super.height,
      width: super.width,
      child: isValidUrl
          ? CachedNetworkImage(
              imageUrl: super.imageUrl,
              httpHeaders: super.httpHeaders,
              height: double.infinity,
              width: double.infinity,
              placeholder: super.placeholder,
              progressIndicatorBuilder: super.progressIndicatorBuilder,
              errorWidget: (_, __, ___) =>
                  super.errorWidget?.call(_, __, ___) ?? err,
              fadeOutDuration: super.fadeOutDuration,
              fadeOutCurve: super.fadeOutCurve,
              fadeInDuration: super.fadeInDuration,
              fadeInCurve: super.fadeInCurve,
              fit: super.fit,
              alignment: super.alignment,
              repeat: super.repeat,
              matchTextDirection: super.matchTextDirection,
              cacheManager: super.cacheManager,
              useOldImageOnUrlChange: super.useOldImageOnUrlChange,
              color: super.color,
              filterQuality: super.filterQuality,
              colorBlendMode: super.colorBlendMode,
              placeholderFadeInDuration: super.placeholderFadeInDuration,
              memCacheWidth: super.memCacheWidth,
              memCacheHeight: super.memCacheHeight,
              cacheKey: super.cacheKey,
              maxWidthDiskCache: super.maxWidthDiskCache,
              maxHeightDiskCache: super.maxHeightDiskCache,
            )
          : err,
    );
  }
}
