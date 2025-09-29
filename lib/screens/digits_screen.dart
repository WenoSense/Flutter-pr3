import 'package:flutter/material.dart';

class DigitsScreen extends StatelessWidget {
  final int counter;

  const DigitsScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    List<Widget> digits = [];
    for (int i = 0; i < 10; i++) {
      digits.add(
        Container(
          color: i == counter ? Colors.green : Colors.transparent,
          margin: const EdgeInsets.all(4),
          padding: const EdgeInsets.all(8),
          child: Text(
            "$i",
            style: TextStyle(
              fontSize: 20,
              color: i == counter ? Colors.white : Colors.black,
            ),
          ),
        ),
      );
    }

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: digits,
      ),
    );
  }
}
