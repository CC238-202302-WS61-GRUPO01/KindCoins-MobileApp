import 'package:flutter/material.dart';
import 'package:kindcoins/screens/registro_b_screen.dart';

class ValidarCodigoScreen extends StatefulWidget {
  @override
  _ValidarCodigoState createState() => _ValidarCodigoState();
}

class _ValidarCodigoState extends State<ValidarCodigoScreen> {
  TextEditingController codigoController = TextEditingController();
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
                    const Text("Código de confirmación"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: codigoController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese el código',
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
                                  builder: (context) => RegistroBScreen()));
                        },
                        child: const Text('Validar')),
                  ],
                ))));
  }
}
