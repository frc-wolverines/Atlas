import 'package:Atlas/logic/cartographer.dart';
import 'package:flutter/material.dart';

const double mappingCardWidth = 25;
const double mappingCardHeight = 20;
const EdgeInsets mappingCardInset = EdgeInsets.only(
  left: mappingCardWidth,
  right: mappingCardWidth,
  top: mappingCardWidth,
  bottom: mappingCardWidth
);

// ignore: must_be_immutable
class MappingGrid extends StatelessWidget {
  List<Widget> content;

  MappingGrid({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView.count(
        primary: false,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 7,
        childAspectRatio: 1.3,
        children: content,
      )
    );
  }
}

class MappingQuickview extends StatelessWidget {
  const MappingQuickview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}