import 'dart:ui';

import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/Taps/profile_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('lib/Assets/Images/Food Picture.png'),
          ),
          buttonArrow(context),
          scroll(),
        ],
      ),
    ));
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 45,
                            height: 5,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cacao Maca Walnut Milk',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 17,
                          color: mainText,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Food • 60 mins',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          color: secondaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProfileTap(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('lib/Assets/Images/image 5.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Elena Shelby',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 15,
                                    color: mainText,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: primary,
                          child: Icon(
                            IconlyBold.heart,
                            color: Colors.white24,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '273 Likes',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15,
                              color: mainText,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(
                        height: 4,
                        color: outline,
                      ),
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 17,
                          color: mainText,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your, ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          color: secondaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(
                        height: 4,
                        color: outline,
                      ),
                    ),
                    Text(
                      'Ingredients',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 17,
                          color: mainText,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) => ingredients(context),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(
                        height: 4,
                        color: outline,
                      ),
                    ),
                    Text(
                      'Steps',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 17,
                          color: mainText,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) => steps(context, index),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
  }

  ingredients(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xFFE3FFF8),
          child: Icon(
            Icons.check,
            color: primary,
            size: 17,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '4 Eggs',
          style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              color: mainText,
              fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }

  steps(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: mainText,
              child: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 270,
                  child: Text(
                    'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 15,
                        color: mainText,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset('lib/Assets/Images/Rectangle 219.png'),
              ],
            ),
          ]),
    );
  }
}
