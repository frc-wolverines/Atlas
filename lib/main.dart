import 'package:flutter/material.dart';

import 'widgets/tabbar.dart';

void main() {
  runApp(const Atlas());
}

class Atlas extends StatelessWidget {
  const Atlas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeTabBar()
    );
  }
}