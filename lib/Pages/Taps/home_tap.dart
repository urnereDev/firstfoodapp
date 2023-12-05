import 'package:firststore/Widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hint: 'Search.',
                        prefixIcon: IconlyLight.search,
                        filled: true,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(),
            ),
          ],
        ),
      ),
    ));
  }
}
