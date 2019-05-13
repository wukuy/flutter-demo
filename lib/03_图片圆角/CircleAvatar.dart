import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CircleAvatar'),
        ),
        body: CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage(
              'http://pic29.nipic.com/20130527/7788456_001854644175_2.jpg',
            ),
        ),
      ),
    );
  }
}

