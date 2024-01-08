import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:flutter/material.dart';

class CustomFollowNotification extends StatefulWidget {
  const CustomFollowNotification({super.key});

  @override
  State<CustomFollowNotification> createState() =>
      _CustomFollowNotificationState();
}

class _CustomFollowNotificationState extends State<CustomFollowNotification> {
  bool follow = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Image.asset('lib/Assets/Images/Avatar.png'),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Dean Winchester',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: mainText,
              ),
            ),
            Text(
              'now following you ・ 1h',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),

          ],
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 80,),
              child: CustomButton(
                height: 40,
                onTap: () {
                  setState(() {
                    follow =!follow;
                  });
                },
                text: follow == false ?'Follow':'Followed',
                color: follow == false ? primary:form,
                textColor: follow == false ? Colors.white:mainText,
              ),
            ))
      ],
    );
  }
}
