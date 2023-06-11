
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
   final options = const ['Megaman', 'Metal', 'Super Man'];



  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: const Text('ListView Title'),
    ),

      body: ListView(
        children:  [
         //options es la funcion que cree arriba 
        ...options.map((game) => ListTile(

          // game es el encargado de mostrar mis datos 
          title: Text(game),
          // trailing coloca una flecha al final para saber que se puede seguir adelante 
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
        )
        ).toList()         

        ],
      )
    );
  }
}