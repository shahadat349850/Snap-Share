import 'package:flutter/material.dart';
import 'package:snapshare/view/widget/my_profile_story.dart';

import '../widget/other_profile_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const MyProfileStory();
            }
            return const OtherProfileStory();
          }),
    ));
  }
}


