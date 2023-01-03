import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi app"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              Row(
                children: const [
                  Expanded(
                    child: ElevatedButton(
                    onPressed: null,
                    child: Text("boton 1"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                    onPressed: null,
                    child: Text("boton 2"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                    onPressed: null,
                    child: Text("boton 3"),
                    ),
                  ),
                ],
              ),
              Text("Bienvenido, Haga clic para continuar"), 
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: null,
                child: const Text("Raised Button"),
                ),
              SizedBox(height: 30,)
             ],
          ),
        ),
      ),
    );
  }

}