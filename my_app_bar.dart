import 'package:flutter/material.dart';
import 'package:testing/drawer.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Text('Final Assignment'),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome By',
                style: TextStyle(fontSize: 30),
              ),
              Text('2018-CS-101', style: TextStyle(fontSize: 30)),
              Text('Abdul Samad', style: TextStyle(fontSize: 30)),
              Text('Open the drawer to see the content',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
