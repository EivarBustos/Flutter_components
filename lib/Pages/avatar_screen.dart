import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar (
        title: const Text('shingeki no kyojin'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
              child:  CircleAvatar(
               child: const Text ('SNk'),
               backgroundColor: Colors.blueAccent[50],
            ),
          )
        ],
      ),

      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://media.metrolatam.com/2019/12/31/template37-3102344cb5a1c566f929d0f2216fa8a4-1200x800.jpg')
         ),
      ),
    );
  }
}