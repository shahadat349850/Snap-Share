import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonNavBar extends StatefulWidget {
  buttonNavBar({
    super.key,
  });

  @override
  State<buttonNavBar> createState() => _buttonNavBarState();
}

class _buttonNavBarState extends State<buttonNavBar> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black87,
      selectedItemColor: Colors.blue.shade500,
      onTap: (index){
        setState((){
          myIndex = index;
        });
      },
      currentIndex: myIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search),
            label: 'Search'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add),
            label: 'Add'
        ),

        BottomNavigationBarItem(icon: Icon(Icons.person_2_rounded),
            label: 'Profile'
        ),
      ],
    );
  }
}