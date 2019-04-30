import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("ClipRRect圆角矩形裁剪 示例"),
        ),
        body: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.network(
                  'http://pic29.nipic.com/20130527/7788456_001854644175_2.jpg',
                  fit: BoxFit.cover,
                ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            )
          ],
        )
      ),
    );
  }
}