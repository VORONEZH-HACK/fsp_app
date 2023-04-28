import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utils/extensions.dart';

class LoginInput extends StatelessWidget {
  const LoginInput({
    Key? key,
    required this.hint,
    required this.onChanged,
    this.obscureText = false,
    this.initialValue,
  }) : super(key: key);

  final String hint;
  final String? initialValue;
  final bool obscureText;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.primary,
        border: Border.all(
          color: context.colors.darkLabel,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextFormField(
          onChanged: onChanged,
          obscureText: obscureText,
          initialValue: initialValue,
          style: context.texts.body2.copyWith(color: context.colors.background),
          inputFormatters: [
            LengthLimitingTextInputFormatter(50),
          ],
          cursorColor: context.colors.background,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.zero,
            focusColor: context.colors.background,
            hintStyle: context.texts.body2.copyWith(
              color: context.colors.label,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            hintText: hint,
          ),
        ),
      ),
    );
  }
}
