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
    MenuOptions(route: 'avatar', icono: Icons.person, nombre: 'Avatar Screen', screen: const AvatarScreen()),
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

  static Route createRouteEffect(Widget destinationScreen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => destinationScreen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

}