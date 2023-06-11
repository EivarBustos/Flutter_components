import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);


void displayDialogIos (BuildContext context){
  showCupertinoDialog(
    barrierDismissible: true,
    context: context,
     builder: (context) {
       return CupertinoAlertDialog(
       title: const Text('Titulo'),
content: Column(
          mainAxisSize: MainAxisSize.min,
          children:const [

            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10),
            FlutterLogo(size: 100)
           ]
          ),
           actions: [
            TextButton(
              onPressed:()=>Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.redAccent))
              ),
             TextButton(
              onPressed:()=>Navigator.pop(context),
              child: const Text('Ok')
              )
          ],

       );
     }
     
     );

}

  void displayDialogAndroid (BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
        elevation: 5,
        title: const Text('Title'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children:const [


            Text('Este es el contenido de la alerta'),
            SizedBox(height: 10),
            FlutterLogo(size: 100)
           ]
          ),

          actions: [
            TextButton(
              onPressed:()=>Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle(color: Colors.redAccent))
              ),
            TextButton(
              onPressed:()=>Navigator.pop(context),
              child: const Text('Ok bitch')
              )

          ],
        );
      }
      );

  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(

          child:const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Text('Mostrar Alerta', style: TextStyle(fontSize: 20)),
          ),
          
          onPressed: () => Platform.isAndroid
          ?displayDialogAndroid(context)
          :displayDialogIos(context)
         
           )
      ),

      floatingActionButton: FloatingActionButton(
      //Boton de la X para cerrar la pantalla y volver a Home 
        child: const Icon(Icons.close),
        onPressed: ()=>Navigator.pop(context)
      
        
         ),
    );
  }
}