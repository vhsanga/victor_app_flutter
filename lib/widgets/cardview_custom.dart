import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:victor_app_flutter/theme/app_theme.dart';

class CardviewCustom extends StatelessWidget{
  final String contenido;
  final String titulo;
  const CardviewCustom({super.key, required this.contenido, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          ListTile(
            title: Text(titulo),
            subtitle: Text(contenido),
            leading: Icon(Icons.card_giftcard_sharp, color: AppTheme.primaryColor),
          )
        ],
      ),
    );
  }

}