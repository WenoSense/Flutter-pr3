import 'package:flutter/material.dart';
import 'screens/counter_screen.dart';
import 'screens/square_screen.dart';
import 'screens/list_screen.dart';
import 'screens/digits_screen.dart';
import 'screens/progress_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа №3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int counter = 0;

  void _increment() {
    setState(() {
      counter++;
    });
  }

  void _decrement() {
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      CounterScreen(counter: counter, onIncrement: _increment, onDecrement: _decrement),
      SquareScreen(counter: counter),
      ListScreen(counter: counter),
      DigitsScreen(counter: counter),
      ProgressScreen(counter: counter),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Практическая работа №3"),
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.exposure_plus_1), label: "Счётчик"),
          BottomNavigationBarItem(icon: Icon(Icons.crop_square), label: "Квадрат"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Список"),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_numbered), label: "Ряд"),
          BottomNavigationBarItem(icon: Icon(Icons.linear_scale), label: "Прогресс"),
        ],
      ),
    );
  }
}
