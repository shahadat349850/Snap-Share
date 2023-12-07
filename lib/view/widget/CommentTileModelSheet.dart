import 'package:flutter/material.dart';
import '../../utils/image_url.dart';

class CommentTileModelSheet extends StatelessWidget {
  const CommentTileModelSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(AssetsPath.profileLogo),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("mferdous12",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color:Color(0xFF1D2939),
              ),),
              SizedBox(width: 10,),
              Text("2 hours ago",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color:Color(0xFF98A2B3),
              ),),
            ],
          ),
          SizedBox(height: 4,),
          Text("Nice picture you have captured 🔥",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color:Color(0xFF1D2939),
          ),),
          SizedBox(height: 3,),
          Text("Replay",style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFF475467),
          ),),
        ],
      ),
      trailing: IconButton(
        onPressed: (){},
        icon: const Icon(Icons.favorite_border,size: 25,),
      ),
    );
  }
}
