import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget{
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Pantalla de Listview Screen"),
      ),
      body: Center( child: Text("Pantalla de Listview Screen")),
    );
  }

}