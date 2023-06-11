import 'package:flutter/material.dart';

import 'package:fl_components/Pages/Screen.dart';
import 'package:fl_components/models/models.dart';


class AppRoutes{

static const initialRoute='Home';

static final menuOptions =<MenuOption>[
  //TODO: BORRAR HOME
  //MenuOption(route: 'Home',
  // icon:Icons.house_siding_outlined , 
  // name: 'HomeScreen', screen: const HomeScreen()),

   MenuOption(route: 'Listview1',
   icon:Icons.list_alt_outlined , 
   name: 'Listview1 tipo 1', 
   screen: const Listview1Screen()),

   MenuOption(route: 'Listview2',
   icon:Icons.list_sharp , 
   name: 'Listview2 tipo 2', 
   screen: const Listview2Screen()),

   MenuOption(route: 'Alert',
   icon:Icons.add_alert , 
   name: 'Alerta', 
   screen: const AlertScreen()),

   MenuOption(route: 'Card',
   icon:Icons.card_giftcard,
   name: 'Tarjetas', 
   screen: const CardScreen()),

   MenuOption(route: 'Avatar',
   icon:Icons.supervised_user_circle_outlined,
   name: 'Circle Avatar', 
   screen: const AvatarScreen()),

   MenuOption(route: 'Animacion',
   icon:Icons.animation,
   name: 'Animaciones', 
   screen: const AnimateScreen()),

   MenuOption(route: 'inputs',
   icon:Icons.cabin,
   name: 'Text Inputs', 
   screen: const InputsScreen()),

   MenuOption(route: 'Slider',
   icon:Icons.ac_unit_rounded,
   name: 'Slider && Checks', 
   screen: const SliderScreen()),

   MenuOption(route: 'ListViewBuilder',
   icon:Icons.build_circle_outlined,
   name: 'infiniteScrol & Pul', 
   screen: const ListViewBuiderScreen())
];


static Map<String, Widget Function(BuildContext)> getApproutes(){
 Map<String, Widget Function(BuildContext)> appRoutes={};
 appRoutes.addAll({'Home':(BuildContext context)=> const HomeScreen()});

 for (var option in menuOptions) {
  appRoutes.addAll({option.route:(BuildContext context)=>option.screen});

   
 }


  return appRoutes;
}

   

static Route<dynamic> onGenerateRoute  (RouteSettings settings) {
          return MaterialPageRoute(
          builder: (context)=> const AlertScreen(),
              );
             
           }
}