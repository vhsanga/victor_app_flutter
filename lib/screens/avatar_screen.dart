import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget{
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla de Avatar Screen"),
      ),
      body: Center(child: Text("Avatar Screen"),),
    );
  }

}