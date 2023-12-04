import 'package:flutter/material.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    fillColor: Colors.grey.shade300,
                    hintText: 'Search',
                    border: const OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, color: Color(0xFFD0D5DD)),
                        borderRadius:
                        BorderRadius.all(Radius.circular(20))),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 2, color: Color(0xFFD0D5DD)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 2, color: Color(0xFFD0D5DD)),
                    )),
              ),
              SizedBox(height: 30,),
            ],
          ),
          const FollowerItem(
            title: 'Faisal',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal Niloy',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal Fardin',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal Fardin',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal Fardin',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal Fardin',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
          const FollowerItem(
            title: 'Faisal Fardin',
            subTitle: 'Flutter Developer',
            image: 'images/OIP.jpg',
          ),
        ],
      ),
    );
  }
}


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
  bool _followButton = true;

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
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
              shape: const OvalBorder(),
            ),
          ),
          trailing: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
              _followButton ? const Color(0xFF6993FF) : const Color(0xFFEAECF0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            onPressed: () {
              setState(() {
                _followButton = !_followButton;
              });
            },
            child: Text(
              _followButton ? 'Follow' : 'Unfollow',
              style: TextStyle(
                  color: _followButton ? Colors.white : Colors.black, fontSize: 14),
            ),
          ),
        ),
        const Divider(),
      ],
    );

  }
}
