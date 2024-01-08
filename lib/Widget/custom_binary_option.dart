import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBinaryOption extends StatefulWidget {
  CustomBinaryOption(
      {super.key, this.leftText = 'Left', this.rightText = 'Right'});

  String leftText;
  String rightText;

  @override
  State<CustomBinaryOption> createState() => _CustomBinaryOptionState();
}

class _CustomBinaryOptionState extends State<CustomBinaryOption> {
  bool lr = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  lr = false;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.leftText,
                    style: TextStyle(
                      height: 5,
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: lr == false ? mainText : secondaryColor,
                    ),
                  ),
                  Container(
                    height: lr == false ? 3 : 1,
                    color: lr == false ? primary : secondaryColor,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  lr = true;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    widget.rightText,
                    style: TextStyle(
                      height: 5,
                      fontFamily: 'Inter',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: lr == true ? mainText : secondaryColor,
                    ),
                  ),
                  Container(
                    height: lr == true ? 3 : 1,
                    color: lr == true ? primary : secondaryColor,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
