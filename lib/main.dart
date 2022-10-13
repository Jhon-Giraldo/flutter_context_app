import 'package:flutter/material.dart';
import 'package:context/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Context App',
      initialRoute: 'onboardingScreen',
      theme: customTheme(),
      routes: {
        'onboardingScreen': (_) => const OnboardingScreen(),
        'home': (_) => const HomeScreen(),
      },
    );

  }

  //CustomAppTheme
  ThemeData customTheme() {
    return ThemeData(

      //Custom AppbarTheme
      appBarTheme: const AppBarTheme(
        color: Color(0xff170339), 
        elevation: 0
      ),

      //Custom ScaffoldBackgroundColor
      scaffoldBackgroundColor: 
      const Color(0xff170339),

      //Custom TexTheme
      textTheme: const TextTheme(
        //Custom EmphazingTextStyle
        bodyText1: TextStyle(color: Color(0xffF8AF3C), fontSize: 19),
        //Custom MaterialDefaultTextStyle
        bodyText2: TextStyle(color: Colors.white, fontSize: 19),
      ),

      //Custom FloatingActionButtonTheme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        extendedTextStyle: TextStyle(fontSize: 16),
        backgroundColor: Colors.white,
        foregroundColor: Color(0xff6429CD),
      )

    );
  }

}