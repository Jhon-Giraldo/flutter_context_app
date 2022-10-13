import 'package:flutter/material.dart';
import 'package:context/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hola desde Widgets'),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBarButton(),
   );
  }
}