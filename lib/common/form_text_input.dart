import 'package:flutter/material.dart';

class FormTextInput extends StatelessWidget {
  final String label;
  final String hintText;
  final int minLines;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String value) onChanged;

  const FormTextInput({
    required this.label,
    required this.hintText,
    required this.onChanged,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.minLines = 1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          onChanged: onChanged,
          minLines: obscureText ? null : minLines,
          maxLines: obscureText ? 1 : 10,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
