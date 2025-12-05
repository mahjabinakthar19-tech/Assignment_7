import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyNewApp());
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
      ),
      home: const HomePage(),
    );
  }
}
