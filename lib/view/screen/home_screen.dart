import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constant.dart';
import '../widget/circular_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Theme.of(context).brightness;
    return  Scaffold(
      appBar: AppBar(
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
                  onPressed: () {

                  },
                  icon: Iconsax.messages_3,
                ),
              ],
            ),
          )),
      body: const Center(child: Text("Body Text")),
    );
  }
}
