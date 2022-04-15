import 'package:flutter/material.dart';
import 'package:flutter_proyecto_1/screens/home_screen.dart';
import 'package:flutter_proyecto_1/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //quita la esquina que dice debug
        home: CounterScreen());
  }
}
