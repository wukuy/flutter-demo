import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ExpansionTile'),
        ),
        body: ListView(
          children: <Widget>[
            ExpansionTile(
              title: Text('标题'),
              children: <Widget>[
                Text('1'),
                Text('2'),
                Text('3')
              ],
            ),
            ExpansionTile(
              title: Text('标题2'),
              children: <Widget>[
                Text('1-2'),
                Text('2-2'),
                Text('3')
              ],
            )
          ],
        ),
      )
    );
  }
}
