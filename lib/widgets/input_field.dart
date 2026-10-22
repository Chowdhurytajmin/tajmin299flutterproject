import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, labelText, hintText, prefixIcon, validator;

  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,

      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 247, 239, 234),

        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,

        labelStyle: TextStyle(
          color: const Color.fromARGB(255, 128, 0, 32),
        ),

        prefixIconColor: const Color.fromARGB(255, 166, 77, 104),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 128, 0, 32),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 128, 0, 32),
            width: 2,
          ),
        ),
      ),

      validator: validator,
    );
  }
}