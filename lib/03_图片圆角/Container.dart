import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Container'),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
