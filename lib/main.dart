import 'package:firststore/Pages/Taps/home_tap.dart';
import 'package:firststore/Pages/home_page.dart';
import 'package:firststore/Pages/sign_up_page.dart';
import 'package:firststore/Pages/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}


