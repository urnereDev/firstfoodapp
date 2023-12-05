import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hint,
      required this.prefixIcon,
      this.suffixIcon,
      this.onTapSuffixIcon,
      this.obscureText = false,
      this.validator,
      this.onChanged,
      this.filled,});

  String hint;
  IconData prefixIcon;
  IconData? suffixIcon;
  VoidCallback? onTapSuffixIcon;
  bool obscureText;
  String? Function(String?)? validator;
  Function(String)? onChanged;
  bool? filled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator ,
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.red),
          ),
          hintText: hint,
          hintStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: secondaryColor),
          prefixIcon: Icon(prefixIcon, color: secondaryColor),
          suffixIcon:
              IconButton(icon: Icon(suffixIcon), onPressed: onTapSuffixIcon,),
          filled: filled,
        ),
      ),
    );
  }
}
