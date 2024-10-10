import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
// Variabler
  int _counter = 0;

//Metoder
  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

// UI User Interface

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the counter"),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: _increaseCounter, child: Text("Increment!"))
          ],
        ),
      ),
    );
  }
}
