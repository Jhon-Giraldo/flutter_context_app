import 'package:flutter/material.dart';
import 'package:context/screens/screens.dart';

class CustomNavigationBarButton extends StatelessWidget {
  const CustomNavigationBarButton({super.key, required this.currentIndex, required this.onItemTap});

  final int currentIndex;
  final void Function(int) onItemTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      showSelectedLabels: true,
      showUnselectedLabels: false,
      //Custom Colors
      selectedItemColor: Theme.of(context).indicatorColor,
      backgroundColor: Theme.of(context).canvasColor,
      unselectedItemColor: Colors.white30,

      items: const [
        // BottomNavigationBarItem(
        //     icon: Icon(Icons.build_outlined, size: 30), label: 'Widgets'),
        BottomNavigationBarItem(
            icon: Icon(Icons.brush, size: 30), label: 'Responsive'),
        BottomNavigationBarItem(
            icon: Icon(Icons.wallpaper_outlined, size: 30), label: 'Scaffold'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined, size: 30),
            label: 'Pragmáticos')
      ],
      currentIndex: currentIndex,
      onTap: onItemTap,

    );
  }
}
