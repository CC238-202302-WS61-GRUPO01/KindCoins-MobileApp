import 'package:flutter/material.dart';
import 'package:kindcoins/screens/validar_codigo_screen.dart';

class RegistroAScreen extends StatefulWidget {
  @override
  _RegistroAState createState() => _RegistroAState();
}

class _RegistroAState extends State<RegistroAScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Registro"),
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(25),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Text("Número de celular"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su celular',
                      ),
                    ),
                    //Espacio extra
                    const SizedBox(
                      height: 40,
                    ),
                    //Espacio extra
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ValidarCodigoScreen()));
                        },
                        child: const Text('Enviar Código')),
                  ],
                ))));
  }
}
