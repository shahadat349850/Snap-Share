import 'package:flutter/material.dart';

class NewPostSecondScreen extends StatefulWidget {
  const NewPostSecondScreen({Key? key}) : super(key: key);

  @override
  State<NewPostSecondScreen> createState() => _NewPostSecondScreenState();
}

class _NewPostSecondScreenState extends State<NewPostSecondScreen> {
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
          const SizedBox(height: 10,),
           const ListTile(
            leading: Icon(Icons.location_on,color: Colors.blue,),
            title: Text('Jamuna Future Park'),
            subtitle: Text('0.4mi ka-244,Progati Sarani,Kuril,Baridhara'),
             trailing: Icon(Icons.close,),
          ),
          Container(
            height:2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
          const ListTile(
            leading: Icon(Icons.play_circle_outline_outlined,color: Colors.blue,),
            title: Text('Rema,Selena Gomez - Calm Down'),
            subtitle: Text('20 second'),
            trailing: Icon(Icons.close,),
          ),
          Container(
            height:2,
            width: double.infinity,
            color: Colors.grey.shade200,
          ),
       ]
      ),
    );
  }
}
