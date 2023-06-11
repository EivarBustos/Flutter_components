
import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Mi lista de trajetas :D'),
      ),
      body: ListView(
        //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), espacio para la tarjeta
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
        CustomCar(),
        //SizedBox espacio entre tarjetas 
        SizedBox(height: 10),
         CustomCardType2(name: 'MI FAVORITO', imageUrl: 'https://th.bing.com/th/id/OIP.SUmrBtiZPEVO2AS-qfJF7gHaEK?pid=ImgDet&rs=1'),
         SizedBox(height: 10),
         CustomCardType2(imageUrl: 'https://th.bing.com/th/id/R.3268b3a4c80bcae1ca762b573ed9f7cc?rik=TUylfBTYN6hneg&pid=ImgRaw&r=0'),
         SizedBox(height: 10),
         CustomCardType2(imageUrl: 'https://th.bing.com/th/id/R.e2ee097628773c10455d36a62eb1b089?rik=fYSnnpE%2feexONQ&pid=ImgRaw&r=0'),
         SizedBox(height: 100)
         

        ],
        
      ),

    );
  }
}

