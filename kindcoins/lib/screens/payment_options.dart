import 'package:flutter/material.dart';



class PaymentOptions extends StatefulWidget {
  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

List<String> options=['Visa','Yape','Plin'];

class _PaymentOptionsState extends State<PaymentOptions> {
  String currentOpt=options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("Selecciona tu método de pago"),
          Text("Revisa el detalle del monto antes de pagar"),
          ListTile(
            title: Image(
              image: AssetImage("lib/assets/Visa.png"),
            ),
            leading: Radio(
              value: options[0],
              groupValue: currentOpt,
              onChanged: (value){
                setState(() {
                  currentOpt=value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Image(
              image: AssetImage("lib/assets/Yape.png"),
            ),
            leading: Radio(
              value: options[1],
              groupValue: currentOpt,
              onChanged: (value){
                setState(() {
                  currentOpt=value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: Image(
              image: AssetImage("lib/assets/Plin.png"),
            ),
            leading: Radio(
              value: options[2],
              groupValue: currentOpt,
              onChanged: (value){
                setState(() {
                  currentOpt=value.toString();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
