import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/points');
        break;
      case 2:
        Navigator.pushNamed(context, '/reward');
        break;
      case 3:
        Navigator.pushNamed(context, '/education');
        break;
      case 4:
        Navigator.pushNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) => _onItemTapped(context, index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.place_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school_rounded),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: '',
        ),
      ],
    );
  }
}

