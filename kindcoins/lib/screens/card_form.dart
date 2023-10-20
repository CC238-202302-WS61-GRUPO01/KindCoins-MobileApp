import 'package:flutter/material.dart';
import 'package:kindcoins/screens/confirmation.dart';

class CardForm extends StatefulWidget {
  @override
  State<CardForm> createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    final st1=theme.textTheme.displayMedium;
    final st2=theme.textTheme.displaySmall;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("Pago", style: st1),
          Text("Recuerda activar compras por Internet con tu banco", style: st2),
          Column(
            children: <Widget>[
              Form(child: Container(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Número de tarjeta"
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              ),
              Row(
                children: <Widget>[
                  Form(
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "MM/AA"
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Form(
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "CVV"
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Form(
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Nombre"
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Form(
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Apellido"
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Form(
                child: Container(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Email"
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                child: Text("Pagar mi suscripción"),
                  onPressed: (){
                    showAboutDialog(
                        context: context,
                        children:[
                          Confirmation()
                        ]
                    );
                  }
              )
            ],
          )
        ],
      ),
    );
  }
}
