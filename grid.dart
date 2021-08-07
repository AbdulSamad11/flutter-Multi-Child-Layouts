import 'package:flutter/material.dart';

void main() => runApp(GridList());

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: Colors.blue,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Icon(
                      Icons.wifi,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 160, left: 120),
                    child: Text('Wi-Fi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.green,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Icon(
                      Icons.devices,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 140, left: 70),
                    child: Text('Cast to Device',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.orange,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Icon(
                      Icons.access_alarm,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 160, left: 100),
                    child: Text('Alarm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.black,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Icon(
                      Icons.brightness_2,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 160, left: 100),
                    child: Text('Dark Mode',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ],
        )));
  }
}
