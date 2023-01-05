import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget{
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi perfil"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text("VS"),
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: AssetImage('assets/FOTO.PNG'),
        )
      ),
    );
  }

}