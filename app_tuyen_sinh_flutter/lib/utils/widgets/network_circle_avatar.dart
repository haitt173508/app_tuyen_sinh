import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_network_image.dart';
import 'package:flutter/material.dart';

class NetworkCircleAvatar extends BaseNetworkImage {
  NetworkCircleAvatar({
    super.key,
    super.imageUrl,
    this.size = 40,
  }) : super(
          height: size,
          width: size,
          shape: const CircleBorder(),
          generalErrorWidget: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  AssetManager.imgNoAvatar,
                ),
              ),
            ),
          ),
        );

  final double size;
}
