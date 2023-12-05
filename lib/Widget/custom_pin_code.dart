import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: PinCodeTextField(
        keyboardType: TextInputType.number,
        appContext: context,
        length: 4,
        onChanged: (value) {},
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(10),
            borderWidth: 2,
        fieldHeight: 70,
        fieldWidth: 70,
        selectedColor: primary,
        activeColor: outline,
        inactiveColor: outline),
      ),
    );
  }
}
