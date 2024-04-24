import 'package:Atlas/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Atlas());
}

class Atlas extends StatefulWidget {
  const Atlas({super.key});

  @override
  State<Atlas> createState() => AtlasState();
}

class AtlasState extends State<Atlas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: const Color.fromARGB(255, 255, 255, 255),
        useMaterial3: true
      ),
      home: const HomePage()
    );
  }
}