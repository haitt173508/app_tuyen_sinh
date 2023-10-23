import 'package:app_tuyen_sinh_flutter/utils/components/base_input_decoration.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_text_form_field.dart';
import 'package:flutter/material.dart';

class ColumnLabelTextField extends StatelessWidget {
  const ColumnLabelTextField({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.wrapper,
    this.hintText,
  });

  final Widget label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final bool obscureText;
  final bool readOnly;
  final GestureTapCallback? onTap;
  final Widget Function(Widget)? wrapper;
  final Widget? suffixIcon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    var baseTextFormField = BaseTextFormField(
      onTap: onTap,
      readOnly: readOnly,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      decoration: BaseInputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        label: null,
        prefixIcon: prefixIcon,
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 4),
          child: suffixIcon,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        suffixIconConstraints: BoxConstraints.tight(
          const Size.square(28),
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            child: label,
          ),
          const SizedBox(height: 4),
          if (wrapper == null)
            baseTextFormField
          else
            wrapper!(
              IgnorePointer(
                child: baseTextFormField,
              ),
            ),
        ],
      ),
    );
  }
}
