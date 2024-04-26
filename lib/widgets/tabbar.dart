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
            title: const Text("Atlas", style: TextStyle(fontWeight: FontWeight.bold),),
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