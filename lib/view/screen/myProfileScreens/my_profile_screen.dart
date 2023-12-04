import 'package:flutter/material.dart';
import 'package:snapshare/view/widget/image_data.dart';

import '../../widget/GridViewWidget.dart';
import '../../widget/ListViewWidget.dart';
import '../../widget/ProfileCard.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {

  List<ImageData> itemList = getImageDataList();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ProfileCart(
              ImageLink: 'https://img.freepik.com/premium-photo/close-up-asian-charming-modern-hipster-man-yellow-t-shirt-smiling-with-confident-assertive-expression-newbie-starting-work-new-company-looking-forward-meet-coworkers_1258-9641.'
            'jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1698969600&semt=ais',
              Name: 'Kathryn Annee',
              userName: '@anny2002',
              BarName: 'My Profile',
              Follower: '850 Follower',
              Following: '125 Following',
              Post: '59 Post',),
            const SizedBox(height: 5,),
            Container(
              height:8,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              InkWell(
                onTap: ()=>const GridViewWidget(itemList: []),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        Icon(Icons.grid_view ),
                        SizedBox(width:5,),
                        Text('Grid view'),
                      ]
                    ),
                  ),
                ),
              ),
                SizedBox(width: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => const ListViewWidget(itemList: []),
                    )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 30,
                      child: Row(
                          children: [
                            Icon((Icons.list) ),
                            SizedBox(width:5,),
                            Text('List view'),
                          ]
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),

            const SizedBox(height: 5,),
            Container(
              height:2,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            const SizedBox(height: 5,),
            GridViewWidget(itemList: itemList),
           // ListViewWidget(itemList: itemList),
          ],
        ),
      ),

    );
  }
}