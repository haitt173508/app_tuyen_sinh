import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:flutter/material.dart';

class LogoBk extends StatelessWidget {
  const LogoBk({
    super.key,
    this.heroTag,
    this.height,
    this.width,
  });

  final Object? heroTag;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    var image = Image.asset(
      AssetManager.imgLogoBk,
      height: height,
      width: width,
    );

    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 16,
        height: 1.4,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (heroTag != null)
            Hero(
              tag: heroTag!,
              child: image,
            )
          else
            image,
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('TUYỂN SINH'),
              SizedBox(height: 20),
              Text('ĐẠI HỌC BÁCH KHOA HÀ NỘI'),
            ],
          ),
        ],
      ),
    );
  }
}
