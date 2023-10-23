import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:flutter/material.dart';

class ShareCodeWidget extends StatelessWidget {
  const ShareCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.primaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(text: 'Chia sẻ mã giới thiệu của bạn ', children: [
                  TextSpan(
                    text: 'TIO3920JK',
                    style: TextStyle(
                      color: context.theme.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.copy_rounded,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const Text('hoặc'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BaseElevatedButton(
                width: null,
                onPressed: () {},
                height: 24,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                buttonStyle: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  elevation: 0,
                  padding: const EdgeInsets.all(4),
                ),
                child: const Text('Nhập'),
              ),
              const Text('\t mã giới thiệu của bạn bè'),
            ],
          ),
        ],
      ),
    );
  }
}
