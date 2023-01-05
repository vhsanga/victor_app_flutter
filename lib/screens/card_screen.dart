import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:victor_app_flutter/widgets/cardview_custom.dart';

class CardScreen extends StatelessWidget{
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla de Card Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: const [
            CardviewCustom(contenido: "Este es el contenido del cardview, este contenido es dinamico", titulo: "Titulo de cardview"),
          ],
        ),
      ),
    );
  }

}