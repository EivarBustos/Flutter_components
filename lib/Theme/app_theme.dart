


import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.lightBlueAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: Colors.indigo,
        appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0
       ),

       textButtonTheme: TextButtonThemeData(
       style: TextButton.styleFrom(primary: Colors.black),
        
         ),

         //Floating Action Buttons
         floatingActionButtonTheme: const FloatingActionButtonThemeData(
         backgroundColor: primary,
         elevation: 0.5 ),

         //Elevacion de Boton 
         elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          shape: const StadiumBorder(),
          elevation: 0.3
        )

         ),
        
         inputDecorationTheme: const InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: primary),
            enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10))
          ),
          
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10))
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
          )

         )

      )
  );



  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: Colors.indigo,
        appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0
       ),
       scaffoldBackgroundColor: Colors.black

  );
      
  
  
  }