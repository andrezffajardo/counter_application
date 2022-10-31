import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numbers of Clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(
              Icons.arrow_drop_up,
            ),
            onPressed: () {
              counter++;
              setState(() {});
            },
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.clear,
            ),
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.arrow_drop_down,
            ),
            onPressed: () {
              counter--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
