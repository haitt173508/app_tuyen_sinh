import 'dart:async';

import 'package:app_tuyen_sinh_flutter/models/api_view_handler.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
    this.email,
    this.phone,
    required this.onConfirmOtp,
    required this.onSendOtp,
  });

  final String? email;
  final String? phone;
  final ValueChanged<String> onConfirmOtp;
  final Future<ApiViewHandler> Function() onSendOtp;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  static const _minute = 3;

  late PinTheme _defaultPinTheme;
  late ValueNotifier<Duration> _duration;
  Timer? _timer;
  final TextEditingController _otpController = TextEditingController();

  @override
  void initState() {
    _reset();
    super.initState();
  }

  _reset() {
    _timer?.cancel();
    _duration = ValueNotifier(const Duration(minutes: 3));
    var totalSeconds = _duration.value.inSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (time) {
      var seconds = totalSeconds - time.tick;
      _duration.value = Duration(seconds: seconds);
      if (seconds == 0) _timer?.cancel();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 30,
        color: context.theme.primaryColor,
        fontWeight: FontWeight.w500,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Vui lòng nhập mã OTP chúng tôi vừa gửi đến ',
                      children: [
                        TextSpan(
                          text: widget.email != null
                              ? 'địa chỉ Email '
                              : 'Số điện thoại ',
                        ),
                        TextSpan(
                          text: widget.email ?? widget.phone,
                          style: TextStyle(
                            color: context.theme.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TextSpan(
                          text: ':',
                        ),
                      ],
                    ),
                    style: const TextStyle(height: 1.5),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '(Lưu ý, OTP sẽ hết hạn trong vòng $_minute phút)',
                    style: TextStyle(
                      fontSize: 14,
                      height: 16 / 14,
                      fontStyle: FontStyle.italic,
                      color: context.theme.primaryColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDA4040).withOpacity(0.10),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      // alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.alarm,
                            color: context.theme.primaryColor,
                            size: 24,
                          ),
                          const SizedBox(width: 4),
                          ValueListenableBuilder<Duration>(
                            valueListenable: _duration,
                            builder: (context, duration, _) {
                              var minutes = duration.inMinutes;
                              return Text(
                                '${minutes.toString().padLeft(2, '0')}:${(duration.inSeconds - minutes * 60).toString().padLeft(2, '0')}',
                                style: const TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w500,
                                  height: 21 / 15,
                                  color: Color(0xFFDA4040),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Pinput(
                      length: 6,
                      controller: _otpController,
                      closeKeyboardWhenCompleted: true,
                      showCursor: true,
                      defaultPinTheme: _defaultPinTheme,
                      focusedPinTheme: _defaultPinTheme.copyBorderWith(
                        border: Border.all(
                          color: context.theme.primaryColor,
                        ),
                      ),
                      autofocus: true,
                      cursor: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        width: 2,
                        height: 36,
                        color: Colors.red,
                      ),
                      isCursorAnimationEnabled: true,
                      toolbarEnabled: true,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Bạn chưa nhận được mã OTP? ',
                        children: [
                          TextSpan(
                            text: 'Gửi lại ngay',
                            style: TextStyle(
                              color: context.theme.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                var res = await widget.onSendOtp();
                                if (res.code == 200) {
                                  setState(_reset);
                                }
                              },
                          ),
                        ],
                      ),
                      style: context.theme.textTheme.bodySmall?.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: BaseElevatedButton(
              child: const Text('Xác nhận'),
              onPressed: () => widget.onConfirmOtp(_otpController.text),
            ),
          ),
        ],
      ),
    );
  }
}
