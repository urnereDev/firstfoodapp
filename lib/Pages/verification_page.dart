import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/password_recovery_page.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_pin_code.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
              'Check your email',
              style: TextStyle(
                height: 5,
                fontFamily: 'Inter',
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: mainText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'We.ve sent the code to your email',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                ),
              ),
            ),
            const CustomPinCode(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'code expires in: ',
                  style: TextStyle(
                    height: 5,
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: mainText,
                  ),
                ),
                const Text(
                  '03:12',
                  style: TextStyle(
                    height: 5,
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFF6464),
                  ),
                ),
              ],
            ),
            CustomButton(
              height: 56,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PasswordPage(),
                ));
              },
              text: 'Verify',
              color: primary,
            ),
            CustomButton(
              height: 56,
              onTap: () {},
              text: 'Send Again',
              colorBorder: secondaryColor,
              color: Colors.white54,
            ),
          ],
        ),
      ),
    ));
  }
}
