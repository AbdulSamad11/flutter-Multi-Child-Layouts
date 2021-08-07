import 'package:flutter/material.dart';
import 'package:testing/screen1.dart';
import 'package:testing/screen2.dart';
import 'package:testing/screen3.dart';
import 'package:testing/screen4.dart';

const customTileStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                  child: Icon(
                Icons.people,
                size: 100,
                color: Colors.amberAccent,
              )),
            ),
            ListTile(
              title: Text(
                'Screen 1',
                style: customTileStyle,
              ),
              tileColor: Colors.black87,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen1()));
              },
            ),
            ListTile(
              title: Text('Screen 2', style: customTileStyle),
              tileColor: Colors.black87,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
            ),
            ListTile(
              title: Text('Screen 3', style: customTileStyle),
              tileColor: Colors.black87,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen3()));
              },
            ),
            ListTile(
              title: Text('Screen 4', style: customTileStyle),
              tileColor: Colors.black87,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen4()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
