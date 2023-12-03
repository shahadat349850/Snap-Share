import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:snapshare/view/widget/image_data.dart';

import '../../widget/buttonNavBar.dart';

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
            const Card(
              elevation: 0,
              color: Colors.white,
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/premium-photo/close-up-asian-charming-modern-hipster-man-yellow-t-shirt-smiling-with-confident-assertive-expression-newbie-starting-work-new-company-looking-forward-meet-coworkers_1258-9641.'
                              'jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1698969600&semt=ais'),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kathryn Annee',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '@anny2002',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                Text(
                                  '59 Post',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '125 Following',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '850 Follower',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
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
            ),
            SizedBox(height: 5,),
            Container(
              height:15,
              width: double.infinity,
              color: Colors.grey.shade200,
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.grid_view) ),
                  SizedBox(width:5,),
                  Text('Grid view'),
                ]
              ),
                SizedBox(width: 30,),
                Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.list) ),
                      SizedBox(width:5,),
                      Text('List view'),
                    ]
                )
              ],
            ),
            Expanded(
              child: MasonryGridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: itemList.length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SizedBox(
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          itemList[index].path,
                        ),
                ),
              ),
                          ),
                          ),
            )
          ],
        ),
      ),

      bottomNavigationBar:  buttonNavBar(),
    );
  }
}


