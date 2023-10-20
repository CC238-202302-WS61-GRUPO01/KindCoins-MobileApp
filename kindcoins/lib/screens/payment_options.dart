import 'package:flutter/material.dart';
import 'package:kindcoins/screens/card_form.dart';



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
              height: 15.0,
              width: 20.0,
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
              height: 15.0,
              width: 15.0,
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
              height: 15.0,
              width: 15.0,
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
          ),
          MaterialButton(
            child: Text("Continuar"),
              onPressed: (){
              showAboutDialog(
                  context: context,
                children:[
                  CardForm()
                ]
              );
              }
          )
        ],
      ),
    );
  }
}
