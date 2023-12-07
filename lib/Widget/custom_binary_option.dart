import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBinaryOption extends StatefulWidget {
  const CustomBinaryOption({super.key});

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
                    'Left',
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
                    'Right',
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
