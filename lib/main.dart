import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:themes/view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "",
      theme: ThemeData(
        fontFamily: "Darker Grotesque"
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}

