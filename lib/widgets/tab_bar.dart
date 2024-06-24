import 'package:Atlas/logic/cartographer.dart';
import 'package:Atlas/logic/messenger.dart';
import 'package:Atlas/main.dart';
import 'package:Atlas/widgets/map_grid.dart';
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
      initialIndex: 0,
      length: 5, 
      child: Scaffold(
          appBar: AppBar(
            title: const Text(Messenger.home_title, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25, color: maize)),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.new_label,
                  color: maize
                ),
                onPressed: addMapping(
                  CartographyManager().constructGridItem("Boo", 1, MapType.generic),
                  MapType.generic
                ),
              ),
              const IconButton(
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
          body: TabBarView(
              children: <Widget>[
                MappingGrid(content: mappings),
                MappingGrid(content: generics),
                MappingGrid(content: motors),
                MappingGrid(content: encoders),
                MappingGrid(content: cameras),
              ]
            )
      )
    );
  }
}