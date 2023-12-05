import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Password recovery',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: mainText,
              ),
            ),
            Text(
              'Enter your email to recover your password',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),
            CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the email';
                  } else {
                    return null;
                  }
                },
                hint: 'Email',
                prefixIcon: IconlyLight.message),
            CustomButton(onTap: () {}, text: 'Sign In', color: primary,)
          ],
        ),
      ),
    ));
  }
}
