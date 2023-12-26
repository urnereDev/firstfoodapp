import 'dart:ffi';

import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFieldInUpload extends StatelessWidget {
  CustomTextFieldInUpload({
    super.key,
    this.maxLines = 1,
    required this.hint,
    this.radius = 30,
    this.icon,
  });

  int maxLines;
  String hint;
  double radius;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: hint,
        hintStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          color: secondaryColor,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: outline),
        ),
      ),
    );
  }
}
