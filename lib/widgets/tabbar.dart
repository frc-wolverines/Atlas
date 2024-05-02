import 'package:Atlas/main.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => HomeTabBarState();
}

class HomeTabBarState extends State<HomeTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, 
      child: Scaffold(
          appBar: AppBar(
            title: const Text("ATLAS DATA MAPPER", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25, color: maize)),
            actions: const <Widget>[
              IconButton(
                icon: Icon(
                  Icons.new_label,
                  color: maize
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white
                ),
                onPressed: null,
              )
            ],
            bottom: const TabBar(
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Generic Devices",
                  ),
                  Tab(
                    text: "Motors",
                  ),
                  Tab(
                    text: "Encoders",
                  ),
                  Tab(
                    text: "Cameras",
                  )
                ]
            ),
          ),
          body: const Text("a")
      )
    );
  }
}