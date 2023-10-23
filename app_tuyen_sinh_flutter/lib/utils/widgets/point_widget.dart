import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class PointWidget extends StatelessWidget {
  const PointWidget({
    super.key,
    this.style,
    this.iconSize = 18,
  });

  final TextStyle? style;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: iconSize,
        ),
        const SizedBox(width: 10),
        Text(
          '${context.user.point} điểm',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            height: 21 / 16,
            fontWeight: FontWeight.w500,
          ).merge(style),
        ),
      ],
    );
  }
}
