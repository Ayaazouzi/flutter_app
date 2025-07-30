import 'package:flutter/material.dart';
import 'screens/apod_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citation du Jour',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const QuoteScreen(),
    );
  }
}
