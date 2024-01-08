import 'package:dotted_border/dotted_border.dart';
import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/second_upload_page.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_slider.dart';
import 'package:firststore/Widget/custom_text_field_in_upload.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class UploadTap extends StatelessWidget {
  const UploadTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '1/',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: mainText,
                      ),
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addCoverPhoto(),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Food Name',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: mainText,
                  ),
                ),
                CustomTextFieldInUpload(hint: 'Enter food name'),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: mainText,
                  ),
                ),
                CustomTextFieldInUpload(
                  hint: 'Tell a little about your food',
                  radius: 10,
                  maxLines: 4,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomSlider(),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                    height: 56,
                    color: primary,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SecondUploadPage(),
                        ),
                      );
                    },
                    text: 'Next')
              ],
            )
          ]),
        ),
      ),
    );
  }

  addCoverPhoto() {
    return InkWell(
      onTap: () {},
      child: DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          strokeWidth: 2,
          dashPattern: const [15, 5],
          color: outline,
          child: SizedBox(
            width: double.infinity,
            height: 160,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(IconlyBold.image, size: 65, color: secondaryColor),
                  Text(
                    'Add Cover Photo',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: mainText,
                    ),
                  ),
                  Text(
                    '(up to 12Mb)',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
