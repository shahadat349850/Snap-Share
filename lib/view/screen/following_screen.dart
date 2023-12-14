import 'package:flutter/material.dart';
import '../widget/following_item.dart';
import '../widget/reusable_search_bar.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const ReusableSearchBar(),
              const SizedBox(height: 20,),
             Expanded(
               child: ListView.builder(
                 itemCount: 20,
                   itemBuilder: (context,index){
                 return  const FollowingItem(
                   title: 'Faisal',
                   subTitle: 'Flutter Developer',
                   image: 'images/OIP.jpg',
                 );
               }),
             )

            ],
          ),
        ),
      ),
    );
  }
}





