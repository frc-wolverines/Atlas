import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SidePanel()
      )
    );
  }
}

class SidePanel extends StatefulWidget {
  const SidePanel({super.key});

  @override
  State<SidePanel> createState() => SidePanelState();
}

class SidePanelState extends State<SidePanel> {
  int currentIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  double alignment = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Row(
        children: <Widget> [
          NavigationRail(
            selectedIndex: currentIndex,
            groupAlignment: alignment,
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            labelType: labelType,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.new_label),
                selectedIcon: Icon(Icons.star),
                label: Text('Motors'),
              ),
              NavigationRailDestination(
                icon: ImageIcon(AssetImage("images/limelight.png"), size: 24),
                selectedIcon: ImageIcon(AssetImage("images/limelight.png"), size: 24),
                label: Text('Cameras'),
              ),
            ],
          ),
        ],
      )
    );
  }
}