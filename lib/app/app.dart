import 'package:flutter/material.dart';
import 'package:snapshare/view/screen/home_page.dart';

class SnapShare extends StatelessWidget {
  const SnapShare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  const HomeScreen(),
    );
  }
}
