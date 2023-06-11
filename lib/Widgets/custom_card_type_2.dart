
import 'package:fl_components/Theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {



  const CustomCardType2({
    super.key,
    required this.imageUrl, 
    this.name});

  final String imageUrl;
  final String? name;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      //clipBehavior: Clip.antiAlias, redondea bordes de imagenes
      clipBehavior: Clip.antiAlias,
      //Shape una pequeña forma a la tarjeta
        shape: RoundedRectangleBorder(
      //borderRadius le da forma a la tarjeta 
        borderRadius: BorderRadius.circular(18)),
        elevation: 30,
        //shadowColor permite darle una especie de sombra a la tarjeta recomendado 0.5
        shadowColor: AppTheme.primary.withOpacity(0.3),
        child:  Column(
        children:  [
           FadeInImage(
            image:   NetworkImage(imageUrl),
            //placeholder nos regala una imagen de cargando mientras nos carga la principal
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            //fadeInDuration para que la imagen cargue mas rapido 
            fadeInDuration:const Duration(milliseconds: 300) ,
            ),

             if(name !=null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!)
              )
        ],
      ),
    );
  }
}