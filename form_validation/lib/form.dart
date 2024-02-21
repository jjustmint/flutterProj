import 'package:flutter/material.dart';

class Myform extends StatelessWidget {
  final String labelText;
  final String validator;
  final String regex;
  TextEditingController controller;
  Myform({
    super.key,
    required this.labelText,
    required this.validator,
    required this.regex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.always,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          } else {
            final re = RegExp(regex);
            if (re.hasMatch(value)) {
              return null;
            } else {
              return validator;
            }
          }
        },
      ),
    );
  }
}
