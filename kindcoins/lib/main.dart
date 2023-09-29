import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kind Coins",
      home: ValidarForm(),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistroA()),
                    );
                  },
                  child: const Text('Inicia Sesión')),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  // Acción al presionar "Ingresa aquí"
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistroA()),
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
                                  builder: (context) => ValidarCodigo()));
                        },
                        child: const Text('Enviar Código')),
                  ],
                ))));
  }
}

class ValidarCodigo extends StatefulWidget {
  const ValidarCodigo({super.key});

  @override
  State<ValidarCodigo> createState() => _ValidarCodigoState();
}

class _ValidarCodigoState extends State<ValidarCodigo> {
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
                                  builder: (context) => RegistroB()));
                        },
                        child: const Text('Validar')),
                  ],
                ))));
  }
}

class RegistroB extends StatefulWidget {
  const RegistroB({super.key});

  @override
  State<RegistroB> createState() => _RegistroBState();
}

class _RegistroBState extends State<RegistroB> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String genderValue = 'Indefinido';

  DateTime selectedDate = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2015));
  }

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
                    const Text("Nombre"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su nombre',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Correo Electrónico"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su correo electrónico',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Fecha de nacimiento ${selectedDate}"),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        child: Text("Elija la fecha"),
                        onPressed: () async {
                          final DateTime? dateTime = await showDatePicker(
                              context: context,
                              initialDate: selectedDate,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2050));
                          if (dateTime != null) {
                            setState(() {
                              selectedDate = dateTime;
                            });
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Género"),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButton<String>(
                      items: const [
                        DropdownMenuItem(
                            value: 'No binario', child: Text('no binario')),
                        DropdownMenuItem(
                            value: 'Masculino', child: Text('Masculino')),
                        DropdownMenuItem(
                            value: 'Femenino', child: Text('Femenino'))
                      ],
                      onChanged: (String? newValue) {
                        setState(() {
                          genderValue = newValue!;
                        });
                      },
                    ),
                    //Espacio extra
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Dirección"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: addressController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Ingrese su dirección',
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
                                  builder: (context) => Inicio()));
                        },
                        child: const Text('Enviar Código')),
                  ],
                ))));
  }
}
