import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class DialogManager {
  static bool isLoading = false;

  static Future showLoad(
    BuildContext context, {
    bool barrierDismissible = false,
  }) async {
    if (!isLoading) {
      isLoading = true;
      try {
        await showDialog(
          context: context,
          barrierDismissible: barrierDismissible,
          builder: (context) => const Center(
            child: SizedBox.square(
              dimension: 30,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
        );
        isLoading = false;
      } catch (_) {
        isLoading = false;
      }
    }
  }

  static hideLoad(BuildContext context) {
    if (isLoading) {
      Navigator.of(context).popUntil(
        (route) => route is! DialogRoute || !isLoading,
      );
    }
  }

  static Future showErrorDialog(
    BuildContext context,
    Widget content,
  ) {
    return showAlertDialog(
      context,
      content: content,
      actions: TextButton(
        child: const Text('Đóng'),
        onPressed: () {
          context.navState.pop();
        },
      ),
    );
  }

  static Future showConfirmDialog(
    BuildContext context,
    Widget content, {
    required Function() onConfirm,
  }) {
    return showAlertDialog(
      context,
      content: content,
      actions: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: onConfirm,
              child: const Text('Đồng ý'),
            ),
          ),
          Container(
            height: double.infinity,
            width: 2,
            color: Colors.grey[350],
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              child: const Text('Hủy'),
              onPressed: () {
                context.navState.pop();
              },
            ),
          ),
        ],
      ),
    );
  }

  static Future showAlertDialog(
    BuildContext context, {
    Widget? title,
    required Widget content,
    Widget? actions,
  }) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 18,
                    height: 24 / 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    color: context.theme.primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: title ?? const Text('Thông báo'),
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(
                    minHeight: 100,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 24,
                  ),
                  alignment: Alignment.center,
                  child: content,
                ),
                Container(
                  height: 2,
                  color: Colors.grey[350],
                  width: double.infinity,
                ),
                if (actions != null)
                  SizedBox(
                    height: 48,
                    child: TextButtonTheme(
                      data: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          maximumSize: const Size.fromHeight(48),
                          minimumSize: const Size.fromHeight(48),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            height: 21 / 16,
                          ),
                        ),
                      ),
                      child: actions,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
