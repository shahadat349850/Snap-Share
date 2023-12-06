import 'package:flutter/material.dart';

class ProfileCreatedAlertBox extends StatelessWidget {
  const ProfileCreatedAlertBox(
      {super.key,
      required this.title,
      required this.desc,
      required this.buttonText,
      required this.buttonText2});

  final String title;
  final String desc;
  final String buttonText;
  final String buttonText2;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      width: 260,
      height: 240,
      padding: const EdgeInsets.all(13),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/user.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1D2939),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 219,
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF475467),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4378FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                  ),
                  onPressed: () {},
                  child: Text(
                    buttonText,
                    // 'Post Now',
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                hoverColor: const Color(0xFFD0D5DD),
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      buttonText2,
                      style: const TextStyle(
                        color: Color(0xFF4378FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 30,
                      color: Color(0xFF4378FF),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
