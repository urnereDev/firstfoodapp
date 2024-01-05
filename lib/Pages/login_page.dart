import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/new_password_page.dart';
import 'package:firststore/Pages/sign_up_page.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscure = false;
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Form(
                    key: key,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const NewPasswordPage(),
                                ));
                              },
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: mainText),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      CustomButton(
                        height: 56,
                        text: 'Login',
                        color: primary,
                        onTap: () {
                          setState(() {
                            key.currentState!.validate();
                          });
                        },
                      ),
                      Text(
                        'Or continue with',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor),
                      ),
                      CustomButton(
                        height: 56,
                        onTap: () {},
                        text: 'G Goggle',
                        color: red,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have any account?',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: mainText),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: primary),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
