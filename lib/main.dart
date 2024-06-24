import 'package:Atlas/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/tab_bar.dart';

const Color maize = Color.fromARGB(255, 255, 241, 100);
const Color blue = Color.fromARGB(255, 15, 112, 176);
const Color navy = Color.fromARGB(255, 0, 0, 75);

const ColorScheme scheme = 
  ColorScheme(
    brightness: 
    Brightness.dark, 
    background: Colors.black, 
    primary: Color.fromARGB(255, 255, 241, 100), 
    onPrimary: navy, 
    secondary: blue, 
    onSecondary: Colors.white, 
    error: Colors.red, 
    onError: Colors.white, 
    onBackground: Colors.white, 
    surface: Colors.black, 
    onSurface: Colors.white
  );

void main() {
  runApp(const Atlas());
}

class Atlas extends StatelessWidget {
  const Atlas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Archivo', colorScheme: scheme),
      home: const Home()
    );
  }
}