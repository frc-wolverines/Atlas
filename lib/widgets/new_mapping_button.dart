import 'package:Atlas/style.dart';
import 'package:flutter/material.dart';

class NewMappingButton extends StatelessWidget {
  const NewMappingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewMappingMenu()
    );
  }
}

class NewMappingMenu extends StatefulWidget {
  const NewMappingMenu({super.key});

  @override
  State<NewMappingMenu> createState() => NewMappingMenuState();
}

class NewMappingMenuState extends State<NewMappingMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(padding: const EdgeInsets.all(30),
              child: MenuAnchor(
                alignmentOffset: const Offset(-12, -200),
                builder:
                    (BuildContext context, MenuController controller, Widget? child) {
                  return FloatingActionButton(
                    onPressed: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                    tooltip: 'Create New Mapping',
                    child: const Icon(Icons.add)
                  );
                },
                menuChildren: const [
                  TextButton(onPressed: null, child: Text("Generic", style: newMappingTextStyle)),
                  TextButton(onPressed: null, child: Text("Motor", style: newMappingTextStyle)),
                  TextButton(onPressed: null, child: Text("Encoder", style: newMappingTextStyle)),
                  TextButton(onPressed: null, child: Text("Camera", style: newMappingTextStyle))
                ]
              ),
            )
          ],)
        ]
      ),
    );
  }
}