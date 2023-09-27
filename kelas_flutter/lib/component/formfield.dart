import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormInputField extends StatelessWidget {
  FormInputField(
      {this.controller,
      this.labelText,
      this.suffix,
      this.validateFunction,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.inputFormatters,
      this.minLines = 1,
      this.onEditingComplete,
      this.maxline = 1,
      this.onChanged,
      this.maxLength,
      this.onTap,
      this.readOnly = false,
      this.focusNode,
      this.enabled = false,
      this.inputDecoration,
      this.onSaved});

  final TextEditingController? controller;
  final String? labelText;
  final String? Function(String?)? validateFunction;
  final TextInputType keyboardType;
  final bool obscureText;
  final FocusNode? focusNode;
  final int minLines;
  final int maxline;
  final Icon? suffix;
  final bool readOnly, enabled;
  final GestureTapCallback? onTap;
  final Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final void Function(String?)? onSaved;
  final InputDecoration? inputDecoration;
  final String isiText = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      onEditingComplete: onEditingComplete,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      decoration: inputDecoration ??
          InputDecoration(
              //filled: true,
              alignLabelWithHint: true,
              labelText: labelText,
              suffixIcon: suffix != null ? suffix : null),
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      onTap: () => onTap,
      maxLength: maxLength,
      enabled: !enabled,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxline,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.top,
      minLines: minLines,
      validator: validateFunction,
      readOnly: readOnly,
    );
  }
}
