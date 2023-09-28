import 'package:flutter/material.dart';

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

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
        child: Column(
          children: <Widget>[
            Text("Iniciar Sesión"),
            SizedBox(height: 25),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Obligatorio";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Correo Electrónico",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)))),
            ),
            SizedBox(height: 10),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Obligatorio";
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1)))),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
