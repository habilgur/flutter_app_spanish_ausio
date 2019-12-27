import "package:flutter/material.dart";
import 'package:flutter_app_silinecek/thebody.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spanish Audio",
      home: TheBody(),
    );
  }
}
