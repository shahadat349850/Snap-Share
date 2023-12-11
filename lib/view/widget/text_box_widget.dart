import 'package:flutter/material.dart';

class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget({
    super.key, required this.text,required this.onTab,
  });

  final String text;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: 24,
        width: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFEAECF0),
          borderRadius: BorderRadius.circular(4),
        ),
        child:  Align(
          alignment: Alignment.center,
          child: Text(
            text,style: const TextStyle(
              fontWeight: FontWeight.w500,fontSize: 12),
          ),
        ),
      ),
    );
  }
}