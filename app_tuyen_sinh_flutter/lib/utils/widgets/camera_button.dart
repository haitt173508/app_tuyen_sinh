import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({
    super.key,
    this.size = 30,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: const ShapeDecoration(
        color: Colors.grey,
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: Icon(
        Icons.camera_alt,
        color: Colors.white,
        size: size * 0.7,
      ),
    );
  }
}
