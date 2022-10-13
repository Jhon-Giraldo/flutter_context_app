import 'package:flutter/material.dart';

class CustomNavigationBarButton extends StatefulWidget {
  const CustomNavigationBarButton ({super.key});

  @override
  State<CustomNavigationBarButton> createState() => _CustomNavigationBarButtonState();
}



class _CustomNavigationBarButtonState extends State<CustomNavigationBarButton> {

  @override
  void didUpdateWidget(covariant CustomNavigationBarButton oldWidget) {
    
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      showSelectedLabels: true,
      showUnselectedLabels: true,
      //Custom Colors
      selectedItemColor: Theme.of(context).indicatorColor,
      backgroundColor: Theme.of(context).canvasColor,
      unselectedItemColor: Colors.white30,
      currentIndex: 0,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.sync_rounded, size: 30),
          label: 'Widgets'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brush, size: 30),
          label: 'Context'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined, size: 30),
          label: 'Pragmáticos'
        )
      ]
    );
  }
}