import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Scaffold(
        appBar: new AppBar(title: new Text('标题')),
        body: new Text("Home Page")
      ),
    );
  }
}
