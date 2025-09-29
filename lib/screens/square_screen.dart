import 'package:flutter/material.dart';

class SquareScreen extends StatelessWidget {
  final int counter;

  const SquareScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    double size = 50 + counter * 20;

    return Center(
      child: Container(
        width: size,
        height: size,
        color: Colors.blue,
      ),
    );
  }
}
