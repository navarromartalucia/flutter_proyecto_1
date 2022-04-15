import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Counter Screen',
            textAlign: TextAlign.center,
          ),
        ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.exposure_plus_1_outlined),
              onPressed: () {
                setState(() {
                  counter++;
                });
              }),
          //const SizedBox(width: 2),
          FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              }),
          //const SizedBox(width: 2),
          FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1_outlined),
              onPressed: () {
                setState(() {
                  counter--;
                });
              }),
        ],
      ),
    );
  }
}
