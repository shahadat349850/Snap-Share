import 'package:flutter/material.dart';

import 'follower_screen.dart';
import 'following_screen.dart';

class FollowScreen extends StatefulWidget {
  const FollowScreen({super.key});

  @override
  State<FollowScreen> createState() => _FollowScreenState();
}

class _FollowScreenState extends State<FollowScreen> with SingleTickerProviderStateMixin {

  late TabController controller;
  @override
  void initState() {
   controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('ferdous_uiux'),
        bottom:TabBar(
          controller: controller,
          labelColor: Colors.black,
          tabs:const [
            Tab(text: 'Following'),
            Tab(text: 'Follower',),
          ],
        ),
      ),
      body:  TabBarView(
        controller: controller,
        children: const [
          FollowingScreen(),
          FollowerScreen(),
        ],
      ),
    );
  }
}

