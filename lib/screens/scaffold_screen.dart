import 'package:context/widgets/widgets.dart';
import 'package:flutter/material.dart';



class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      Image.asset(
        'assets/logo_pragma.png',
        scale: 5,
      ),
            
      const CustomElevatedButton(),

      ],
    );
  }
}