import 'package:flutter/material.dart';
import 'package:context/widgets/widgets.dart';


class OnboardingScreen extends StatelessWidget {

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            //PragmaPrimaryLogo
            Image.asset(
              'assets/logo_pragma.png',
              scale: 5,
            ),
            //DefaultText
            Text(
              'Somos pilotos',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            //EmphasizedText
            Text(
              'de nuestro destino', 
              style: Theme.of(context).textTheme.bodyText1
            ),

            const SizedBox(height: 30),

            //Custom StartButton
            const CustomStartButton(),

          ],
        )      
      ),     
    );
  }
}