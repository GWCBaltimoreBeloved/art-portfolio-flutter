import 'package:flutter/material.dart';

class FormTextInput extends StatelessWidget {
  final String label;
  final String hintText;
  final int minLines;
  final Function(String value) onChanged;

  const FormTextInput({
    required this.label,
    required this.hintText,
    this.minLines = 1,
    required this.onChanged,
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
        TextField(
          onChanged: onChanged,
          minLines: minLines,
          maxLines: 10,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
