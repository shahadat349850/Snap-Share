import 'package:flutter/material.dart';

class MeterialButton extends StatelessWidget {
   MeterialButton({super.key,required this.buttonText});

  String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45,
        width: double.infinity,
        child: MaterialButton(
            color: Colors.blue,
            onPressed: (){}, child:  Text(buttonText) )
    );
  }
}