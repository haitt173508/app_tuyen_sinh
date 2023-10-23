import 'package:app_tuyen_sinh_flutter/utils/components/base_input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseTextFormField<T> extends TextFormField {
  BaseTextFormField({
    super.key,
    super.initialValue,
    this.focusNode,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.style,
    this.strutStyle,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.autofocus = false,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    super.onSaved,
    super.validator,
    this.inputFormatters,
    super.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection,
    this.selectionControls,
    this.buildCounter,
    this.scrollPhysics,
    this.autofillHints,
    super.autovalidateMode,
    this.scrollController,
    super.restorationId,
    this.enableIMEPersonalizedLearning = true,
    this.mouseCursor,
    this.decoration,
    super.controller,
  });

  final FocusNode? focusNode;
  final BaseInputDecoration? decoration;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final bool autofocus;
  final bool readOnly;
  final ToolbarOptions? toolbarOptions;
  final bool? showCursor;
  final String obscuringCharacter;
  final bool obscureText;
  final bool autocorrect;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final bool enableSuggestions;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final double cursorWidth;
  final double? cursorHeight;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool? enableInteractiveSelection;
  final TextSelectionControls? selectionControls;
  final InputCounterWidgetBuilder? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final Iterable<String>? autofillHints;
  final ScrollController? scrollController;
  final bool enableIMEPersonalizedLearning;
  final MouseCursor? mouseCursor;

  @override
  FormFieldState<String> createState() => _BaseTextFormFieldState();
}

class _BaseTextFormFieldState extends FormFieldState<String> {
  late final BaseTextFormField _widget;

  @override
  void initState() {
    super.initState();
    _widget = super.widget as BaseTextFormField;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _widget.controller,
      focusNode: _widget.focusNode,
      decoration: _widget.decoration,
      keyboardType: _widget.keyboardType,
      textCapitalization: _widget.textCapitalization,
      textInputAction: _widget.textInputAction,
      style: _widget.style,
      strutStyle: _widget.strutStyle,
      textDirection: _widget.textDirection,
      textAlign: _widget.textAlign,
      textAlignVertical: _widget.textAlignVertical,
      autofocus: _widget.autofocus,
      readOnly: _widget.readOnly,
      toolbarOptions: _widget.toolbarOptions,
      showCursor: _widget.showCursor,
      obscuringCharacter: _widget.obscuringCharacter,
      obscureText: _widget.obscureText,
      autocorrect: _widget.autocorrect,
      smartDashesType: _widget.smartDashesType,
      smartQuotesType: _widget.smartQuotesType,
      enableSuggestions: _widget.enableSuggestions,
      maxLengthEnforcement: _widget.maxLengthEnforcement,
      maxLines: _widget.maxLines,
      minLines: _widget.minLines,
      expands: _widget.expands,
      maxLength: _widget.maxLength,
      onChanged: _widget.onChanged,
      onTap: _widget.onTap,
      onEditingComplete: _widget.onEditingComplete,
      onFieldSubmitted: _widget.onFieldSubmitted,
      inputFormatters: _widget.inputFormatters,
      cursorWidth: _widget.cursorWidth,
      cursorHeight: _widget.cursorHeight,
      cursorRadius: _widget.cursorRadius,
      cursorColor: _widget.cursorColor,
      keyboardAppearance: _widget.keyboardAppearance,
      scrollPadding: _widget.scrollPadding,
      enableInteractiveSelection: _widget.enableInteractiveSelection,
      selectionControls: _widget.selectionControls,
      buildCounter: _widget.buildCounter,
      scrollPhysics: _widget.scrollPhysics,
      autofillHints: _widget.autofillHints,
      scrollController: _widget.scrollController,
      enableIMEPersonalizedLearning: _widget.enableIMEPersonalizedLearning,
      mouseCursor: _widget.mouseCursor,
      autovalidateMode: _widget.autovalidateMode,
      restorationId: _widget.restorationId,
      onSaved: _widget.onSaved,
      validator: _widget.validator,
      enabled: _widget.enabled,
    );
  }
}
