import 'dart:math' show Random;
import 'package:flutter/material.dart';


class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {

  double _width = 150;
  double _height = 50;
  Color _color = Colors.indigo.shade600;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(50);

  void changeShape (){
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255), 
      random.nextInt(255), 
      1
    );
    _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadiusGeometry
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const ImageIcon(
            AssetImage('assets/isotipo.png'), 
            size: 55,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
   );
  }
}