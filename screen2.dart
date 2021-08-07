import 'package:testing/drawer.dart';
import 'package:testing/grid.dart';
import 'package:flutter/material.dart';

void main() => runApp(Screen2());

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page 2',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  Screen({Key key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Grid MultiChild Layout widget'),
          backgroundColor: Colors.purple,
        ),
        body: GridList());
  }
}
