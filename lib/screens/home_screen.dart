import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 5.0, //sombra
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //centra en filas (rows)
          children: <Widget>[
            Text('Click Counter', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            counter++;
          }),
    );
  }
}
