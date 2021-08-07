/// Flutter code sample for Flow

// This example uses the [Flow] widget to create a menu that opens and closes
// as it is interacted with, shown above. The color of the button in the menu
// changes to indicate which one has been selected.

import 'package:flutter/material.dart';
import 'package:testing/drawer.dart';

void main() => runApp(const IndStack());

class IndStack extends StatefulWidget {
  const IndStack({Key key}) : super(key: key);

  @override
  _IndStackState createState() => _IndStackState();
}

class _IndStackState extends State<IndStack> {
  int index = 0;
  void changeState() {
    if (index == 3)
      setState(() {
        index = 0;
      });
    else
      setState(() {
        index++;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text('Indexed Stack Multi Layout Widget'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: IndexedStack(
            index: index,
            children: [
              GestureDetector(
                  onTap: changeState,
                  child: Center(
                    child: Container(
                      child: Icon(
                        Icons.devices,
                        size: 80,
                        color: Colors.white,
                      ),
                      color: Colors.blue,
                      width: 200,
                      height: 200,
                    ),
                  )),
              GestureDetector(
                  onTap: changeState,
                  child: Center(
                    child: Container(
                      child: Icon(
                        Icons.access_alarm,
                        size: 80,
                        color: Colors.white,
                      ),
                      color: Colors.green,
                      width: 200,
                      height: 200,
                    ),
                  )),
              GestureDetector(
                  onTap: changeState,
                  child: Center(
                    child: Container(
                      child: Icon(
                        Icons.brightness_2,
                        size: 80,
                        color: Colors.white,
                      ),
                      color: Colors.orange,
                      width: 200,
                      height: 200,
                    ),
                  )),
              GestureDetector(
                  onTap: changeState,
                  child: Center(
                    child: Container(
                      child: Icon(
                        Icons.alarm,
                        size: 80,
                        color: Colors.white,
                      ),
                      color: Colors.black,
                      width: 200,
                      height: 200,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
