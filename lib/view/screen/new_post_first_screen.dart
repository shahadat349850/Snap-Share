import 'package:flutter/material.dart';

class NewPostFirstScreen extends StatefulWidget {
  const NewPostFirstScreen({Key? key}) : super(key: key);

  @override
  State<NewPostFirstScreen> createState() => _NewPostFirstScreenState();
}

class _NewPostFirstScreenState extends State<NewPostFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Post',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.blue)
              ],
            ),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.network(
                      'https://images.pexels.com/photos/45987/pexels-photo-45987.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                 const Text('Write a caption',style: TextStyle(
                   color: Colors.grey,
                   fontSize: 15,
                   fontWeight: FontWeight.w500
                 ),)
              ],
            ),
          ),

          Container(
            height:2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Add Location',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),),
          ),
          Container(
            height:2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          const SizedBox(height: 10,),
           const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Chip(label: Text('Multiple Select')),
                SizedBox(width: 15,),
                Chip(label: Text('Multiple Select')),
                SizedBox(width: 15,),
                Chip(label: Text('Multiple Select')),

              ],
            ),
          ),
          Container(
            height:2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Add Music',style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
            ),),
          ),
          Container(
            height:2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Chip(label: Text('Multiple Select'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.white24,
                      child: Icon(Icons.music_note,color: Colors.black,),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Chip(label: Text('Multiple Select'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.white24,
                      child: Icon(Icons.music_note,color: Colors.black,),
                    ),),
                  SizedBox(width: 15,),
                  Chip(label: Text('Multiple Select'),
                    avatar: CircleAvatar(
                      backgroundColor: Colors.white24
                      ,
                      child: Icon(Icons.music_note,color: Colors.black,),
                    ),),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
