import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/colors.dart';
import 'home_screen.dart';
import 'my_profile_screen.dart';

class MainBottomNavigationScreen extends StatefulWidget {
  const MainBottomNavigationScreen({super.key});

  @override
  State<MainBottomNavigationScreen> createState() => _MainBottomNavigationScreenState();
}

class _MainBottomNavigationScreenState extends State<MainBottomNavigationScreen> {

  final List<Widget> _screens = [
    const HomeScreen(),
    const MyProfileScreen(),
    const HomeScreen(),
    const MyProfileScreen(),

  ];

  int _index=0;

  @override
  Widget build(BuildContext context) {
    Theme.of(context).brightness;
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          print(value);
           _index =value;
           setState(() {
           });
        },
        backgroundColor: Theme.of(context).brightness == Brightness.dark ?
        AppColors.darkBackgroundColor : AppColors.lightBackgroundColor,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Theme.of(context).brightness == Brightness.dark ?
        AppColors.lightBackgroundColor : AppColors.darkBackgroundColor,
        showUnselectedLabels: false,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home,), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.search_normal_1,), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.add,), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle,), label: ""),
        ],
      ),
    );
  }
}
