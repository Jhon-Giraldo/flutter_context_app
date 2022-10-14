import 'package:flutter/material.dart';


class PragmaticosScreen extends StatelessWidget {
  const PragmaticosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
    
        children: [
    
          const SizedBox(height: 20),
    
          Text(
            'Somos pilotos',
            style: Theme.of(context).textTheme.bodyText2,
          ),
              //EmphasizedText
          Text(
            'de nuestro destino', 
            style: Theme.of(context).textTheme.bodyText1
          ),
    
          const SizedBox(height: 20),
    
          //Dorian
          pragmaticoImage1(),
          Text(
            'Dorian', 
            style: Theme.of(context).textTheme.bodyText1
          ),
    
          const SizedBox(height: 20),
    
          //Morellia
          pragmaticoImage2(),
          Text(
            'Morellia', 
            style: Theme.of(context).textTheme.bodyText1
          ),
    
          const SizedBox(height: 20),

          //Jimena  
          pragmaticoImage3(),
          Text(
            'Jimena', 
            style: Theme.of(context).textTheme.bodyText1
          ),
    
          const SizedBox(height: 20),
    
          //Harold
          pragmaticoImage4(),
          Text(
            'Harold', 
            style: Theme.of(context).textTheme.bodyText1
          ),

          const SizedBox(height: 20),

        ]

      ),
    );
  }
}

Widget pragmaticoImage1() => Card(
  child: Stack(

    children: [
      Ink.image(
        image: const AssetImage('assets/dorian.png'), 
        height: 270, 
        width: 270,
      ), 
    ],
  ),
);

Widget pragmaticoImage2() => Card(
  child: Stack(

    children: [
      Ink.image(
        image: const AssetImage('assets/morellia.png'), 
        height: 270, 
        width: 270,
      ), 
    ],
  ),
);

Widget pragmaticoImage3() => Card(
  child: Stack(

    children: [
      Ink.image(
        image: const AssetImage('assets/jimena.png'), 
        height: 270, 
        width: 270,
      ), 
    ],
  ),
);

Widget pragmaticoImage4() => Card(
  child: Stack(

    children: [
      Ink.image(
        image: const AssetImage('assets/jhon.png'), 
        height: 270, 
        width: 270,
      ), 
    ],
  ),
);
