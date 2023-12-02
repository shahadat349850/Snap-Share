import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({super.key, required this.title, required this.desc, required this.buttonText, required this.buttonText2});

  final String title;
  final String desc;
  final String buttonText;
  final String buttonText2;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
          width: 256,
          height: 235,
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/info.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text( title,
                style: const TextStyle(
                  color: Color(0xFF1D2939),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 219,
                child: Text( desc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF475467),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child:  Text(
                          buttonText ,
                          // 'Edit',
                          style: const TextStyle(color: Color(0xFF4378FF), fontSize: 14),
                        ),
                        onPressed: () {},
                      )),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4378FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    onPressed: () {},
                    child: Text(
                      buttonText2,
                      // 'Post Now',
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
