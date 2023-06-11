import 'package:fl_components/Theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getApproutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
      
       
      // onGenerateRoute en el caso que nos equivocamos en una ruta nos enviara a la direccion que colocamos aqui 
     
    );
  }
}