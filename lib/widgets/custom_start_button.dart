import 'package:flutter/material.dart';

class CustomStartButton extends StatelessWidget {
  
  const CustomStartButton({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    //CustomFloatingActionButton
    return FloatingActionButton.extended(
      elevation: 20,
      onPressed: () => Navigator.pushNamed(context, 'home') , 
      label: Row(
        children: const [ 

          //Custom PragmaIcon
          ImageIcon(
            AssetImage('assets/isotipo.png'), 
            size: 45, color: Color(0xff6429CD)
          ),
          
          Text(
          'Presentación de Context en Flutter',
          ),
          
        ]
      )
    );
  }
}