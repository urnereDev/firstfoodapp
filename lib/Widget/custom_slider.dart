import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double slider = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'CookingDuration',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 17,
                fontWeight: FontWeight.w700,
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
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '<10',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '30',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '>60',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15,
                      color: primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              activeColor: primary,
              thumbColor: primary,
              divisions: 2,
              max: 60,
              min: 10,
              value: slider,
              onChanged: (value) {
                setState(() {
                  slider = value;
                });
              },
            )
          ],
        ),
      ],
    );
  }
}
