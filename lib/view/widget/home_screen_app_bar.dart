import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/constant.dart';
import 'circular_icon_button.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularIconButton(
                onPressed: () {
                },
                icon: Iconsax.user,
              ),
              const Spacer(),
              Image(image: AssetImage(
                  Theme.of(context).brightness == Brightness.dark ?
                  Constant.socialLiveTextLogoWhitePNG:
                  Constant.socialLiveTextLogoBlackPNG
              ),),
              const Spacer(),
              CircularIconButton(
                onPressed: () {
                },
                icon: Iconsax.notification,
              ),
              const SizedBox(width: 2,),
              CircularIconButton(
                onPressed: () {},
                icon: Iconsax.messages_3,
              ),
            ],
          ),
        ));
  }
}