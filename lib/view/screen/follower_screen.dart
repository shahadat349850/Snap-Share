import 'package:flutter/material.dart';
import 'package:snapshare/view/widget/reusable_search_bar.dart';
import '../widget/follower_item.dart';

class FollowerScreen extends StatefulWidget {
  const FollowerScreen({super.key});

  @override
  State<FollowerScreen> createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {

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
                      return  const FollowerItem(
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

