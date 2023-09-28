import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kind Coins",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("KindCoins"),
        ),
        body: Center(
          child: Text("Contenido"),
        ));
  }
}

class RegistroA extends StatefulWidget {
  const RegistroA({super.key});

  @override
  State<RegistroA> createState() => _RegistroAState();
}

class _RegistroAState extends State<RegistroA> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registro"),
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Text("Número de celular"),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            )));
  }
}
