import 'package:flutter/material.dart';
import '../../utils/image_url.dart';

class FollowingItem extends StatefulWidget {
  const FollowingItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;

  @override
  State<FollowingItem> createState() => _FollowingItemState();
}

class _FollowingItemState extends State<FollowingItem> {
  bool _followButton = false;

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
                backgroundColor: _followButton
                    ? const Color(0xFF6993FF)
                    : const Color(0xFFEAECF0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                setState(() {
                  _followButton = !_followButton;
                });
              },
              child: Text(
                _followButton ? 'Follow' : 'Unfollow',
                style: TextStyle(
                  color: _followButton ? Colors.white : Colors.black,
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