import 'package:context/screens/widgets_screen.dart';
import 'package:context/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:context/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[

    WidgetsScreen(),
    ResponsiveScreen(),
    ScaffoldScreen(),
    PragmaticosScreen(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomNavigationBarButton(
        currentIndex: _selectedIndex, 
        onItemTap: _onItemTapped),
      );
  }
}

class Persona {

  static const String cerebro = 'si';
  final String nombre;

  Persona(this.nombre);

  get nombreCerebro => cerebro + nombre;


}

final Persona persona = Persona('Harold'); 
final Persona persona2 = Persona('Stiven'); 
final Persona persona3 = Persona('Jeisson'); 

