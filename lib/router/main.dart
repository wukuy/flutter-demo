import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new RouterDemo());

class RouterDemo extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new MaterialApp(
        title: 'RouterDemo',
        home: new Splash(),
        routes: <String, WidgetBuilder> {
          '/home': (BuildContext context) => new Home()
        }
      );
    }
}

class Splash extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new _SplashState();
    }
}

class _SplashState extends State{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Container(
        child: Image.asset('lib/assets/P3.png'),
      );
    }
    @override
      void initState() {
        // TODO: implement initState
        super.initState();
        // Duration duration = new Duration(seconds: 2);
        // Future.delayed(duration, () => Navigator.of(context).pushReplacementNamed('/home'));
      }
}

class Home extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return new _HomeState();
    }
}

class _HomeState extends State{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: new AppBar(title: new Text('我是标题')),
        body: new Text('我是内容'),
      );
    }
}