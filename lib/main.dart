import 'package:flutter/material.dart';
import 'package:victor_app_flutter/router/app_router.dart';
import 'package:victor_app_flutter/screens/alert_screen.dart';
import 'package:victor_app_flutter/screens/home_screen.dart';
import 'package:victor_app_flutter/theme/app_theme.dart';
//este es un comentario
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRouter.getRoutes(),
      initialRoute: AppRouter.initialRoute,
      theme: AppTheme.lightTheme,
    );
  }

}