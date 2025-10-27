import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ColorChanger(),
      ),
    );
  }
}

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  ColorChangerState createState() => ColorChangerState();
}

class ColorChangerState extends State<ColorChanger> {
  Color _color = Colors.blue;

  void _changeColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      child: Center(
        child: ElevatedButton(
          onPressed: _changeColor,
          child: Text('Change Color'),
        ),
      ),
    );
  }
}