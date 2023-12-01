import 'package:flutter/material.dart';
import 'package:snapshare/view/screen/first_screen.dart';

class SnapShare extends StatelessWidget {
  const SnapShare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
        brightness: Brightness.light,
      ),
    );
  }
}
