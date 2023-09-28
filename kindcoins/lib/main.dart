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

class ValidarForm extends StatefulWidget {
  const ValidarForm({super.key});

  @override
  State<ValidarForm> createState() => _LoginForm();
}

class _LoginForm extends State<ValidarForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Iniciar Sesión"),
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(15),
          child: Form(
            child: Column(children: <Widget>[
              SizedBox(height: 25),
              TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Obligatorio";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Correo Electrónico",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(1))),
                    hintText: 'Ingresa tu correo electrónico'),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Obligatorio";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Contraseña",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(1))),
                    hintText: 'Ingresa tu contraseña'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ValidarForm()));
                  },
                  child: const Text('Inicia Sesión')),
            ]),
          ),
        )));
  }
}
