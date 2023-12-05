import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/verification_page.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool obscure = false;
  final key = GlobalKey<FormState>();
  bool _containsANumber = false;
  RegExp numberRegExp = RegExp(r'\d');
  bool _atleastCharacter = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Form(
                    key: key,
                    child: Column(
                      children: [
                        Text(
                          'Welcome!',
                          style: TextStyle(
                              height: 5,
                              fontFamily: 'Inter',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: mainText),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Please enter your account here',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                            textAlign: TextAlign.center,
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
                        CustomTextFormField(
                          onChanged: (value) {
                            setState(() {
                              _atleastCharacter = value.length < 6 ? false : true;
                              _containsANumber =
                                  numberRegExp.hasMatch(value);
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
                          suffixIcon: obscure == true
                              ? IconlyLight.show
                              : IconlyLight.hide,
                          onTapSuffixIcon: () {
                            setState(() {});
                            obscure = !obscure;
                          },
                        ),
                        passwordTerms(
                            contains: _containsANumber,
                            atleast6: _atleastCharacter),
                      ],
                    ),
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => VerificationPage(),
                      ));
                      setState(() {
                        key.currentState!.validate();
                      });
                    },
                    text: 'Sign Up',
                    color: primary,
                  )
                ],
              ),
            ),
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
                    atleast6 == false ? outline : Color(0xFFE3FFF1),
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
                    contains == false ? outline : Color(0xFFE3FFF1),
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
