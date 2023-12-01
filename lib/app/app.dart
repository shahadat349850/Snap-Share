import 'package:flutter/material.dart';
import 'package:snapshare/utils/theme.dart';
import 'package:snapshare/view/screen/first_screen.dart';

class SnapShare extends StatelessWidget {
  const SnapShare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      themeMode: ThemeMode.system,
      theme: SnapShareAppTheme.lightTheme, // light mode
      darkTheme: SnapShareAppTheme.darkTheme, // dark mode
    );
  }
}
