import 'package:flutter/material.dart';
import 'package:snapshare/utils/image_url.dart';
import '../widget/text_box_widget.dart';
import '../widget/user_profile_gridview_photo.dart';
import '../widget/user_profile_listview_photo.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            // IconButton(
            //     onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
            Text(
              "Ostad App",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1D2939)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(AssetsPath.profileLogo),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "59 Post",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "125 Following",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "850 Follower",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Visit: www.ostad.app",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          TextBoxWidget(
                            text: 'Follow',
                            onTab: () {},
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          TextBoxWidget(text: "Message", onTab: () {}),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
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
                              Icon(
                                Icons.grid_view_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Grid View",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            children: [
                              Icon(
                                Icons.list,
                                size: 22,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "List View",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
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
    );
  }
}
