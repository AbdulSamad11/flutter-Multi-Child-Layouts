/// Flutter code sample for Flow

// This example uses the [Flow] widget to create a menu that opens and closes
// as it is interacted with, shown above. The color of the button in the menu
// changes to indicate which one has been selected.

import 'package:flutter/material.dart';
import 'package:testing/drawer.dart';

void main() => runApp(const MyCustomLayout());

class MyCustomLayout extends StatefulWidget {
  const MyCustomLayout({Key key}) : super(key: key);

  @override
  _IndStackState createState() => _IndStackState();
}

class _IndStackState extends State<MyCustomLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: const Text('Custom Multi Layout Widget'),
          backgroundColor: Colors.grey[900],
        ),
        body: _CustomMultiChildLayout(),
      ),
    );
  }
}

Widget _CustomMultiChildLayout() {
  return CustomMultiChildLayout(
    delegate: _MyMultiChildDelegate(),
    children: [
      LayoutId(
          id: 1, child: TextButton(onPressed: null, child: Text('button 1'))),
      LayoutId(
          id: 2, child: TextButton(onPressed: null, child: Text('button 2'))),
      LayoutId(
          id: 3, child: TextButton(onPressed: null, child: Text('button 3'))),
    ],
  );
}

class _MyMultiChildDelegate extends MultiChildLayoutDelegate {
  _MyMultiChildDelegate({this.position});

  final Offset position;
  @override
  void performLayout(Size size) {
    Size leadingSize = Size.zero;

    if (hasChild(1)) {
      leadingSize = layoutChild(1, BoxConstraints.tight(Size(100, 50)));
    }
    if (hasChild(2)) {
      leadingSize = layoutChild(2, BoxConstraints.tight(Size(100, 50)));
    }
    if (hasChild(3)) {
      leadingSize =
          layoutChild(3, BoxConstraints(minHeight: 50, minWidth: 100));
    }
    positionChild(2, Offset(100, 100));
    positionChild(3, Offset(200, 200));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    throw UnimplementedError();
  }
}
