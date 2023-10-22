import 'package:flutter/material.dart';
import 'package:kindcoins/screens/home_screen.dart';
import 'widgets/validar_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kind Coins",
      home: ValidarFormWidget(),
      //home: HomeScreen(),
    );
  }
}
