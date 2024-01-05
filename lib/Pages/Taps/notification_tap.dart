import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Widget/custom_follow_notification.dart';
import 'package:firststore/Widget/custom_liked_notification.dart';
import 'package:flutter/material.dart';

class NotificationTap extends StatelessWidget {
  List newItem = ['follow'];
  List todayItem = ['liked', 'follow', 'liked'];
  List yesterdayItem = ['follow', 'follow'];

  NotificationTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New', style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: mainText,
            ),),
            ListView.builder(
              shrinkWrap: true,
              itemCount: newItem.length,
              itemBuilder: (context, index) =>
              newItem[index] == 'follow'
                  ? CustomFollowNotification()
                  : CustomLikedNotification(),),
            Text('Today', style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: mainText,
            ),),
            ListView.builder(
              shrinkWrap: true,
              itemCount: todayItem.length,
              itemBuilder: (context, index) =>
              todayItem[index] == 'follow'
                  ? CustomFollowNotification()
                  : CustomLikedNotification(),),
            Text('Yesterday', style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: mainText,
            ),),
            ListView.builder(
              shrinkWrap: true,
              itemCount: yesterdayItem.length,
              itemBuilder: (context, index) =>
              yesterdayItem[index] == 'follow'
                  ? CustomFollowNotification()
                  : CustomLikedNotification(),),
          ],
        ),
      ),
    ));
  }
}
