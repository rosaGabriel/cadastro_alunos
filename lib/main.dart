import 'package:cadastro_de_alunos/screens/registers/form_register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Cadastro de Alunos",
      routes: {
        "/": (BuildContext context) => FormRegister(),
        "/insert": (BuildContext context) => FormRegister(),
        },
        initialRoute: "/",
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder(),)  
        ),
  ));
}
