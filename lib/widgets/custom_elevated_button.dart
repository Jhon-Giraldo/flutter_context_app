import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,
        foregroundColor: Theme.of(context).floatingActionButtonTheme.foregroundColor
      ),
      child: const Text(
        'Botón desplegable', 
        style: TextStyle(
          fontSize: 16
          ),
      ),
      onPressed: () {
        Scaffold.of(context).showBottomSheet(
          (BuildContext context) {
            return Container(
              height: 300,
              color: Theme.of(context).canvasColor,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,
                    foregroundColor: Theme.of(context).floatingActionButtonTheme.foregroundColor
                    ),
                  child: const Text(
                    'Cierra botón desplegable', 
                    style: TextStyle(
                      fontSize: 16
                    )
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),   
              ),
            );
          },
        );
      },
    );
  }
}