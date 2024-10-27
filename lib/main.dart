import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/user_panel/login/login.dart';
import 'view/user_panel/register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'eVote',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
