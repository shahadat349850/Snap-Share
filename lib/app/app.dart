import 'package:flutter/material.dart';

import '../view/widget/post_design_card.dart';

class SnapShare extends StatelessWidget {
  const SnapShare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PostDesignCard(),
    );
  }
}
