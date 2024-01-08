import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Widget/custom_binary_option.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_product_item.dart';
import 'package:flutter/material.dart';

class ProfileTap extends StatelessWidget {
  ProfileTap({super.key, this.showFollowButton = false});
  bool showFollowButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: mainText,
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: mainText,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage('lib/Assets/Images/Avatar4.png'),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: primary,
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Choirul Syafril',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: mainText,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '32',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: mainText,
                            ),
                          ),
                          Text(
                            'Recipes',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '782',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: mainText,
                            ),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '1.287',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: mainText,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: CustomButton(
                      onTap: () {},
                      text: 'Follow',
                      color: primary,
                      height: 56,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(children: [
                CustomBinaryOption(
                  leftText: 'Recipes',
                  rightText: 'Liked',
                ),
                GridView.count(crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 1/1.5,
                children: List.generate(5, (index) => CustomProductItem()),),

              ]),
            ),
          ],
        ),
      ),
    );
  }
}
