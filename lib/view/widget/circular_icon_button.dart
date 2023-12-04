import 'package:flutter/material.dart';
import 'package:snapshare/utils/colors.dart';

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key, required this.icon, required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Theme.of(context).brightness;
    return CircleAvatar(
      radius: 20,
      backgroundColor: AppColors.notificationColors,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon,color : Theme.of(context).brightness == Brightness.dark ?
        AppColors.darkIconColor : AppColors.lightIconColor , size: 25,),
      ),
    );
  }
}