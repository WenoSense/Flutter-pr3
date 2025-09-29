import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final int counter;

  const ListScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    for (int i = 0; i <= counter; i++) {
      items.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            "Значение: $i",
            style: const TextStyle(fontSize: 20),
          ),
        ),
      );
    }

    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items,
        ),
      ),
    );
  }
}
