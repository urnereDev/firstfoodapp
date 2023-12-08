import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  bool obscure = false;
  bool _containsANumber = false;
  RegExp numberRegExp = RegExp(r'\d');
  bool _atleastCharacter = false;

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
                'Reset your password',
                style: TextStyle(
                  height: 5,
                  fontFamily: 'Inter',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: mainText,
                ),
              ),
              Text(
                'Please enter your new password',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
              CustomTextFormField(
                onChanged: (value) {
                  setState(() {
                    _atleastCharacter = value.length < 6 ? false : true;
                    _containsANumber = numberRegExp.hasMatch(value);
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the password';
                  } else {
                    return null;
                  }
                },
                obscureText: obscure,
                hint: 'Password',
                prefixIcon: IconlyLight.lock,
                suffixIcon: obscure == true ? IconlyLight.show : IconlyLight.hide,
                onTapSuffixIcon: () {
                  setState(() {});
                  obscure = !obscure;
                },
              ),
              passwordTerms(
                  contains: _containsANumber, atleast6: _atleastCharacter),
              CustomButton(onTap: () {}, text: 'Done', color: primary,)
            ],
          ),
        ),
      ),
    );
  }

  passwordTerms({required bool contains, required bool atleast6}) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Your Password must contain:',
              style: TextStyle(
                  height: 5,
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: mainText),
            ),
          ],
        ),
        SizedBox(
          height: 25,
          child: Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor:
                    atleast6 == false ? outline : const Color(0xFFE3FFF1),
                child: Icon(
                  Icons.check,
                  size: 12,
                  color: atleast6 == false ? secondaryColor : primary,
                ),
              ),
              Text(
                'Atleast 6 characters',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
          child: Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor:
                    contains == false ? outline : const Color(0xFFE3FFF1),
                child: Icon(
                  Icons.check,
                  size: 12,
                  color: contains == false ? secondaryColor : primary,
                ),
              ),
              Text(
                'Contains a number',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
