import 'package:flutter/material.dart';

class ProfileCart extends StatelessWidget {
  const ProfileCart({
    Key? key,
    required this.ImageLink,
    required this.Name,
    required this.userName,
    required this.BarName,
    required this.Follower,
    required this.Following,
    required this.Post,
  }) : super(key: key);

  final String Name;
  final String userName;
  final String ImageLink;
  final String BarName;
  final String Post;
  final String Following;
  final String Follower;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: EdgeInsets.only(top: 10),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              BarName,
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
                  backgroundImage: NetworkImage(ImageLink), // Fix here
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Name,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      userName,
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
                          Post,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          Following,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          Follower,
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
    );
  }
}
