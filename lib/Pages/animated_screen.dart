import 'dart:math' show Random;

import 'package:flutter/material.dart';


class AnimateScreen extends StatefulWidget {
  
  
   
  const AnimateScreen({Key? key}) : super(key: key);

  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {

  double _width=100;
  double _height=100;
  Color _color=Colors.blueAccent;
  BorderRadiusGeometry _borderRadius =BorderRadius.circular(10);

  void changaValor(){
    final random = Random();
    
     _width= random.nextInt(300).toDouble()+70;
    _height= random.nextInt(300).toDouble()+70;
    _color=Color.fromRGBO(
       random.nextInt(255) , 
       random.nextInt(255) ,
       random.nextInt(255) ,
       1
       );
    _borderRadius =BorderRadius.circular( random.nextInt(255).toDouble()+10);
    setState(() {
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_fill_outlined, size:35),
        onPressed: changaValor
      ),
    );
  }
}