import 'package:flutter/material.dart';

class UploadUserPhotoScreen extends StatelessWidget {
  const UploadUserPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 50,
          width: 150,
          child: Column(
            children: [
              uploadPhotoAlertDialog(context)
            ],
          ),
        ),
      ),

    );
  }

  uploadPhotoAlertDialog(context){
    return showDialog(
        context: context,
        builder: (context){
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            child: SizedBox(
              height: 200,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Select from',style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: Colors.black87
                        ),),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.camera_alt_outlined,size: 80,color: Colors.black54,
                                ),
                                Text('Camera'),
                              ],
                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Icon(Icons.photo_outlined,size: 80,color: Colors.black54,),
                                Text('Gallery'),
                              ],
                            ),
                          ],
                        ),
                      ]
                  )
              ),
            ),
          );
        }
    );
  }

}

