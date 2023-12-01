import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapshare/utils/constant.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage(Constant.sociaLiveTextLogoPNG,),),
            const SizedBox(height: 50,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("Create Account",
                  style: TextStyle(
                    fontSize: 18
                  ),)),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (){},
                    child: const Text("Log In",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),)),
                IconButton(
                    onPressed: (){},
                   // icon: Icon(Icons.keyboard_arrow_down))
                    icon: Image.asset(Constant.downArrowIconPNG),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
