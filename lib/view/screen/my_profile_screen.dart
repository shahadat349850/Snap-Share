import 'package:flutter/material.dart';
import 'package:snapshare/utils/image_url.dart';
import '../widget/user_profile_gridview_photo.dart';
import '../widget/user_profile_listview_photo.dart';
import '../widget/ProfileCard.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   ProfileCart(
                     appBarName: 'My Profile',
                    imageLink: AssetsPath.profileLogo,
                    name: 'Kathryn Annee',
                    userName: '@anny2002',
                    totalFollower: '850 Follower',
                    totalFollowing: '125 Following',
                    totalPost: '59 Post',
                   ),
                  const SizedBox(height: 5,),
                  Container(
                    height:8,
                    width: double.infinity,
                    color: Colors.grey.shade200,
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
            ),
            const DefaultTabController(
              length: 2, // Set the number of tabs
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 56,
                      width: 280,
                      child: TabBar(
                        indicatorColor: Color(0xFF667085),
                        tabs: [
                          Tab(
                            child: Row(
                              children: [
                               Icon(Icons.grid_view_outlined,size: 20,color: Colors.black,),
                                SizedBox(width: 5,),
                                Text("Grid View",style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                          ),
                          Tab(
                            child: Row(
                              children: [
                                Icon(Icons.list,size: 22,color: Colors.black,),
                                SizedBox(width: 5,),
                                Text("List View",style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Content of Tab 1
                          UserProfileGridViewPhoto(),
                          // Content of Tab 2
                          UserProfileListviewPhoto(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
