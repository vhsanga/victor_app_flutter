import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget{
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla de Card Screen"),
      ),
      body: Center(child: Text("Pantalla de Card Screen")),
    );
  }

}