import 'package:flutter/material.dart';
import '../../utils/image_url.dart';

class FollowerItem extends StatefulWidget {
  const FollowerItem(
      {super.key,
        required this.title,
        required this.subTitle,
        required this.image});

  final String title;
  final String subTitle;
  final String image;

  @override
  State<FollowerItem> createState() => _FollowerItemState();
}

class _FollowerItemState extends State<FollowerItem> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFF1D2939),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            widget.subTitle,
            style: const TextStyle(
              color: Color(0xFF667085),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          leading: Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(AssetsPath.profileLogo),
                fit: BoxFit.fill,
              ),
              shape: const OvalBorder(),
            ),
          ),
          trailing: SizedBox(
            width: 80, // Set a fixed width for the container
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:  const Color(0xFFEAECF0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Remove',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        const Divider(),
      ],
    );

  }
}