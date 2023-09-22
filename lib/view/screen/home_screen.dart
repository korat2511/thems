import 'package:flutter/material.dart';
import 'package:page_flip_builder/page_flip_builder.dart';

import 'more_details.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PageFlipBuilder(
      frontBuilder: (BuildContext context) => const ProfileScreen(),
      backBuilder: (BuildContext context) => const MoreDetails(),
    );
  }
}
