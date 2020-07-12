import 'package:flutter/material.dart';
import 'package:flutter_1/rehber.dart';
import 'package:flutter_1/model/rehbermodule.dart';
import 'package:flutter_1/rehberekle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
 // MyApp({Key key}) : super(key:key);
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp>{
  @override
  List<rehbermodule> liste;

  @override
  void initState() {
    liste=rehbermodule.liste;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rehber",
      home: rehber()
    );
  }

}

