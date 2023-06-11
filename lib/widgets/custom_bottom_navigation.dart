import 'package:flutter/material.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined, size: 35),
          label: 'Hellos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_outlined, size: 35),
          label: 'Hellos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded, size: 35),
          label: 'Users',
        ),
      ],
    );
  }
}
