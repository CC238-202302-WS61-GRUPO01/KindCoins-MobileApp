import 'package:flutter/material.dart';
import 'package:kindcoins/screens/CampaignCreationPage2.dart';
import 'widgets/validar_form.dart';
import 'screens/CampaignCreationPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kind Coins",
      home: CampaignCreationPage(),
    );
  }
}
