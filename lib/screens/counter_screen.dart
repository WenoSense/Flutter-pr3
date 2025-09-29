import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CounterScreen({
    super.key,
    required this.counter,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Счётчик: $counter", style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onIncrement,
            child: const Text("Увеличить"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onDecrement,
            child: const Text("Уменьшить"),
          ),
        ],
      ),
    );
  }
}
