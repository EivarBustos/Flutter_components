
import 'package:flutter/material.dart';

import 'package:fl_components/Theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
double _sliderValue=100;

bool _sliderEnable=true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),

      //body: SingleChildScrollView( se envuelve la columna para adaptarla ala pantalla
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            //divisions: 10,
            value: _sliderValue, 
            
            onChanged: _sliderEnable?
            (value){
             _sliderValue= value;
             
             setState(() {});
            }
            :null
          ),

          //Checkbox(
           // value: _sliderEnable,
           // onChanged: (value) {
            //  _sliderEnable=value ?? true;
           //   setState(() {});
          //  }
          //),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable,
             onChanged: (value) => setState(() {
               _sliderEnable=value??true;})
             
             ),

            // Switch.adaptive(
            //  value: _sliderEnable, 
             // onChanged:(value) => setState(() {
             //  _sliderEnable=value;})
             //  ),


          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable,
             onChanged: (value) => setState(() {
               _sliderEnable=value;})
          ),
      


        // const AboutListTile(), mira las licencias con las wue estamos
        const AboutListTile(),






          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image:const NetworkImage('https://animesolution.com/wp-content/uploads/2017/10/Black-Clover-02_03.42_2017.10.10_07.36.51.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
                
                ),
            ),
          ),

            
        ],
      )
    );
  }
}