import 'package:flutter/material.dart';
import '../../utils/image_url.dart';

class MyProfileStory extends StatelessWidget {
  const MyProfileStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: SizedBox(
        height: 155,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 128,
                  width: 96,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(AssetsPath.profileLogo),
                      )
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.add,color: Colors.white,size: 32,),
                  )
                ),
                Positioned(
                  top: 7,
                  left: 0,
                  child:  InkWell(
                    onTap: (){},
                    child: Container(
                      margin: const EdgeInsets.only(left:7,right: 7),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      child:  CircleAvatar(
                        minRadius: 12,
                        backgroundImage: NetworkImage(AssetsPath.profileLogo),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 26,
              width: 96,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                    left: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                    right: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  )
              ),
              child: const Align(
                child: Text("You",style: TextStyle(fontSize: 12,fontWeight:FontWeight.w700,letterSpacing:0.3),),
              ),
            )
          ],
        ),
      ),
    );
  }
}