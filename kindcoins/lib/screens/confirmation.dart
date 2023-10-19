import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Confirmación"),
            Spacer(
              flex: 1,
            ),
            Text("Pago realizado con éxito")
          ],
        ),
      ),
    );
  }
}
