import 'package:findaway/screen/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/NormalController.dart';
import 'screen/Home/HomePage.dart';

void main() {
  Get.lazyPut(() => NormalController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Find A Way',
      
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
