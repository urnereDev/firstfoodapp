import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/login_page.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            'lib/Assets/Images/Onboarding.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Text(
              'Start Cooking',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: mainText),
            ),
            SizedBox(
              width: 209,
              height: 54,
              child: Text(
                'Let’s join our community to cook better food!',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                height: 56,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                text: 'Get Started',
                color: primary,
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
