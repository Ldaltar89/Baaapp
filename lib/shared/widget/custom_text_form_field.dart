import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool obscuretext;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboartype;
  final String? errorMessage;

  const CustomTextFormField({
    super.key,
    required this.label,
    this.obscuretext = false,
    this.onChanged,
    this.validator,
    this.keyboartype,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        const SizedBox(height: 5),
        TextFormField(
          keyboardType: keyboartype,
          onChanged: onChanged,
          validator: validator,
          obscureText: obscuretext,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]!)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]!)),
              errorText: errorMessage),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
