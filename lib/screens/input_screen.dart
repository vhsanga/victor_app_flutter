import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:victor_app_flutter/widgets/input_custom.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formularioRegistroKey = GlobalKey<FormState>();
    final Map<String, String >valores = {
      'name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role':''
    };


    return  Scaffold(
      appBar: AppBar(
        title: Text("Pantalla de Input Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formularioRegistroKey,
            child: Column(
              children: [
                const SizedBox(height: 40),
                InputCustom(
                  labelText: "Nombre:",
                  hintText: "Ingrese su nombre",
                  formProperty: 'name',
                  formValues: valores
                ),
                const SizedBox(height: 30),
                InputCustom(
                  labelText: "Apellido:",
                  hintText: "Ingrese su apellido",
                  formProperty: 'last_name',
                  formValues: valores
                ),
                const SizedBox(height: 30),
                InputCustom(
                  labelText: "Email:",
                  hintText: "correo@email.com",
                  formProperty: 'email',
                  inputType: TextInputType.emailAddress,
                  formValues: valores
                ),
                const SizedBox(height: 30),
                InputCustom(
                  labelText: "Password:",
                  hintText: "Ingrese su contraseña",
                  formProperty: 'password',
                  isObscureText: true,
                  formValues: valores
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  value: 'admin',
                  items: const [
                    DropdownMenuItem(value: 'admin', child: Text("Administrador")),
                    DropdownMenuItem(value: 'susuario', child: Text("Super Usuario")),
                    DropdownMenuItem(value: 'dev', child: Text("Programador")),
                    DropdownMenuItem(value: 'devj', child: Text("Programador Junior")),
                  ], 
                  onChanged: ((value) {
                    valores['role'] = value ?? 'Admin';
                  })),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: (() {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if(!formularioRegistroKey.currentState!.validate() ){
                        print("Formulario no valido");
                        return; 
                      }
                      print(valores);
                    }), 
                    child: const SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text("Guardar"))
                    ),
                  )

              ],
            ) 
          ),
        ),
      ),
    );
  } 

}