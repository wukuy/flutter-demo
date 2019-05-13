import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipOval圆形剪裁 示例'),
        ),
        body: ClipOval(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'http://pic29.nipic.com/20130527/7788456_001854644175_2.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}