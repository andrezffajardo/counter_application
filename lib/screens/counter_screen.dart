import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFunction: increase,
        decreaseFunction: decrease,
        resetFunction: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFunction;
  final Function decreaseFunction;
  final Function resetFunction;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFunction,
    required this.decreaseFunction,
    required this.resetFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(
            Icons.arrow_drop_up,
          ),
          onPressed: () => increaseFunction(),
        ),
        FloatingActionButton(
          child: const Icon(
            Icons.clear,
          ),
          onPressed: () => resetFunction(),
        ),
        FloatingActionButton(
          child: const Icon(
            Icons.arrow_drop_down,
          ),
          onPressed: () => decreaseFunction(),
        ),
      ],
    );
  }
}
