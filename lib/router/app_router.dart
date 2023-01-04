import 'package:flutter/material.dart';
import 'package:victor_app_flutter/models/models.dart';
import 'package:victor_app_flutter/screens/animated_screen.dart';
import 'package:victor_app_flutter/screens/avatar_screen.dart';
import 'package:victor_app_flutter/screens/listview_screen.dart';
import 'package:victor_app_flutter/screens/screens.dart';

class AppRouter{
  static const initialRoute = 'home';
  static final menuOpcionApp = <MenuOptions> [
    MenuOptions(route: 'alert', icono: Icons.warning_rounded, nombre: 'Alert Screen', screen: const AlertScreen()),
    MenuOptions(route: 'card', icono: Icons.card_membership, nombre: 'Card Screen', screen: const CardScreen() ),
    MenuOptions(route: 'input', icono: Icons.text_format, nombre: 'Input Screen', screen: const InputScreen()),
    MenuOptions(route: 'animated', icono: Icons.play_arrow, nombre: 'Animated Screen', screen: const AnimatedScreen()),
    MenuOptions(route: 'listview', icono: Icons.list, nombre: 'Listview Screen', screen: const ListviewScreen()),
    
 ];


  static Map<String, Widget Function(BuildContext) > getRoutes(){
    Map<String, Widget Function(BuildContext)>  routes = {};
    routes.addAll({'home': (BuildContext context ) => const HomeScreen()  });
    for (var item in menuOpcionApp){
      routes.addAll({ item.route: (BuildContext context ) => item.screen  });
    }
    return routes; 
  }

}