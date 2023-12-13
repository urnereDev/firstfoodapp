import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/Taps/home_tap.dart';
import 'package:firststore/Pages/Taps/notification_tap.dart';
import 'package:firststore/Pages/Taps/profile_tap.dart';
import 'package:firststore/Pages/Taps/scan_tap.dart';
import 'package:firststore/Pages/Taps/upload_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> taps = [
      const HomeTap(),
      const UploadTap(),
      const ScanTap(),
      const NotificationTap(),
      const ProfileTap(),
    ];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          fixedColor: primary,
          unselectedItemColor: secondaryColor,
          backgroundColor: Colors.white,
          elevation: 0,
          onTap: (int index) {
            if (index == 0) {
              setState(() {
                _currentIndex = index;
              });
            } else if (index == 1) {
              setState(() {
                _currentIndex = index;
              });
            } else if (index == 2) {
              setState(() {
                _currentIndex = index;
              });
            } else if (index == 3) {
              setState(() {
                _currentIndex = index;
              });
            } else if (index == 4) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.home), label: 'Home',),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.upload), label: 'Upload'),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.scan), label: 'Scan', backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.notification), label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(IconlyBold.profile), label: 'Profile'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: primary,
          elevation: 0,
          child: const Icon(
            IconlyBold.scan,
            size: 30,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: taps[_currentIndex],
      ),
    );
  }
}
