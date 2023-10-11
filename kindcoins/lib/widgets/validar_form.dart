import 'package:flutter/material.dart';
import 'package:kindcoins/screens/registro_a_screen.dart';

class ValidarFormWidget extends StatefulWidget {
  @override
  State<ValidarFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<ValidarFormWidget> {
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistroAScreen()),
                    );
                  },
                  child: const Text('Inicia Sesión')),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  // Acción al presionar "Ingresa aquí"
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistroAScreen()),
                  );
                },
                child: Text(
                  'Registrate aquí',
                  style: TextStyle(
                    color:
                        Colors.blue, // Puedes cambiar el color según tu diseño
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ]),
          ),
        )));
  }
}
