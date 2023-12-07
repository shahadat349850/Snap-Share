import 'package:flutter/material.dart';
import 'package:snapshare/utils/image_url.dart';

class UserProfileListviewPhoto extends StatelessWidget {
  const UserProfileListviewPhoto({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Expanded(
        child: ListView.builder(
         itemCount: 20,
          itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.all(5.0),
             child: Image.network(
               AssetsPath.profileLogo,
                height: 200,
                width:double.infinity,
                fit: BoxFit.cover,
             ),
           );
         },
        ),
      ),
    );
  }
}
