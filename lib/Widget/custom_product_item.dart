import 'dart:ui';

import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomProductItem extends StatefulWidget {
  const CustomProductItem({super.key});

  @override
  State<CustomProductItem> createState() => _CustomProductItemState();
}

class _CustomProductItemState extends State<CustomProductItem> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: 165,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    'lib/Assets/Images/user1.png',
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Calum Lewis',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    color: mainText,
                  ),
                )
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: 151,
                height: 151,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset('lib/Assets/Images/Rectangle 188.png'),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        favorite=!favorite;
                      });
                    },
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white.withOpacity(0.10),
                            ),
                            child: Center(
                                child: favorite == true
                                    ? const Icon(
                                        IconlyLight.heart,
                                        color: Colors.white,
                                      )
                                    : const Icon(
                                        IconlyLight.heart,
                                        color: Colors.red,
                                      ),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('Pancake', style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 17,
            color: mainText,
            fontWeight: FontWeight.w700
          ),),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('Food • > 60 mins',style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 15,
            color: secondaryColor,
          ),),
        ),
      ]),
    );
  }
}
