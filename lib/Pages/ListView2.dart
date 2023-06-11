
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
   final options = const ['Megaman', 'Metal', 'Super Man'];



  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      title: const Text('ListView Title 2')
      
    ),

      body: ListView.separated(
      itemCount: options.length,
      itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: (() {
            final game = options[index];
            // ignore: avoid_print
            print(game);
          }),
        ),
            separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}