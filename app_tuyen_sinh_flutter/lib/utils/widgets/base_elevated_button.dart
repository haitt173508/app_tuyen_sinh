import 'package:flutter/material.dart';

class BaseElevatedButton extends StatelessWidget {
  const BaseElevatedButton({
    super.key,
    required this.child,
    this.textStyle,
    this.height,
    required this.onPressed,
    this.width = double.infinity,
    this.buttonStyle,
  });

  final Widget child;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final void Function()? onPressed;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = textStyle ??
        const TextStyle(
          color: Colors.white,
          fontSize: 16,
          height: 22.4 / 16,
          fontWeight: FontWeight.w500,
        );

    return SizedBox(
      width: width,
      height: height ?? 52,
      child: ElevatedButton(
        style: buttonStyle ??
            ElevatedButton.styleFrom(
              // backgroundColor: const Color(0xff18265F).withOpacity(0.45),
              // shadowColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              disabledBackgroundColor: const Color(0xFF9F9F9F),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: defaultTextStyle,
            ),
        onPressed: onPressed,
        child: DefaultTextStyle(
          style: defaultTextStyle,
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: false,
          ),
          child: child,
        ),
      ),
    );
  }
}
