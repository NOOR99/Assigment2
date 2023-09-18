import 'package:flutter/material.dart';
import 'package:meal_project/mealWidget.dart';

void main() {
  runApp(MealWidget());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
