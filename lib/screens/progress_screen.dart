import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  final int counter;

  const ProgressScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    double progress = (counter.clamp(0, 10)) / 10; //

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Прогресс: ${(progress * 100).toInt()}%", style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          LinearProgressIndicator(value: progress),
        ],
      ),
    );
  }
}
