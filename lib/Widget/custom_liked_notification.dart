import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomLikedNotification extends StatefulWidget {
  const CustomLikedNotification({super.key});

  @override
  State<CustomLikedNotification> createState() =>
      _CustomLikedNotificationState();
}

class _CustomLikedNotificationState extends State<CustomLikedNotification> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset('lib/Assets/Images/Avatar3.png'),
                ),
              ),
              Positioned(
                bottom: 10,
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset('lib/Assets/Images/Avatar2.png'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            RichText(maxLines: 2,
                text: TextSpan(
                  text: 'John Steve',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: mainText,
                  ),
              children: [
                TextSpan(
                  text: ' and \n',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: secondaryColor,
                  ),
                ),
                TextSpan(
                  text: 'Sam Winchester',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: mainText,
                  ),
                )
              ]
            ),),
            Text('liked your recipe ・ 20 min', style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: secondaryColor,
            ),),
              ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10),
          child: Image.asset('lib/Assets/Images/Cover.png', height: 64, width: 64,),
        ),
      ],
    );
  }
}
