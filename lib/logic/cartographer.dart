import 'package:Atlas/main.dart';
import 'package:flutter/material.dart';

var mappings = <Widget>[];
var generics = <Widget>[];
var motors = <Widget>[];
var encoders = <Widget>[];
var cameras = <Widget>[];

enum MapType {generic, motor, encoder, camera}

addMapping(Widget container, MapType type) {
  mappings.add(container);

  switch (type) {
    case MapType.generic: generics.add(container);
    case MapType.motor: motors.add(container);
    case MapType.encoder: encoders.add(container);
    case MapType.camera: cameras.add(container);
    default: break;
  }
}

removeMapping(Widget container, MapType type) {
  mappings.remove(container);

  switch (type) {
    case MapType.generic: generics.remove(container);
    case MapType.motor: motors.remove(container);
    case MapType.encoder: encoders.remove(container);
    case MapType.camera: cameras.remove(container);
    default: break;
  }
}

class CartographyManager {

  var usedIds = <int>[
    0, 1, //O corresponds to the RoboRIO, while 1 is the PDP
  ];

  bool idUsed(int id) {
    if(usedIds.contains(id)) {
      return true;
    } else {
      return false;
    }
  }

  Widget constructGridItem(String name, int id, MapType type) {
    return Container(
      color: maize,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Container(
                color: maize
              )
            ],
          ),
        ],
      )
    );
  }
}