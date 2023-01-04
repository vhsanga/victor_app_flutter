import 'package:flutter/material.dart';
import 'package:victor_app_flutter/models/models.dart';
import 'package:victor_app_flutter/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static List<MenuOptions> listaMenu = AppRouter.menuOpcionApp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes de Flutter"),
        elevation: 10,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(listaMenu[index].nombre),
          leading: Icon(listaMenu[index].icono),
          onTap: () {
            Navigator.pushNamed(context, listaMenu[index].route);
          },
        ), 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: AppRouter.menuOpcionApp.length,
      ),
    );
  }

}