import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshare/view/screen/follower_screen.dart';
import 'package:snapshare/view/screen/following_screen.dart';

class ProfileCart extends StatelessWidget {
  const ProfileCart({
    Key? key,
    required this.imageLink,
    required this.name,
    required this.userName,
    required this.appBarName,
    required this.totalFollower,
    required this.totalFollowing,
    required this.totalPost,
  }) : super(key: key);

  final String name;
  final String userName;
  final String imageLink;
  final String appBarName;
  final String totalPost;
  final String totalFollowing;
  final String totalFollower;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              appBarName,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundImage: NetworkImage(imageLink), // Fix here
                ),
                const SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.black.withOpacity(.8)
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Text(
                      userName,
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Text(
                            totalPost,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(.8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: (){
                            Get.to(()=>const FollowingScreen());
                          },
                          child: Text(
                            totalFollowing,
                            style: TextStyle(
                                fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(.8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            Get.to(()=>const FollowerScreen());
                          },
                          child: Text(
                            totalFollower,
                            style: TextStyle(
                                fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(.8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
