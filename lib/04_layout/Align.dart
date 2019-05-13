import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('align'),
        ),
        body: Align(
          alignment: Alignment.center, // Alignment(0, 0),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

/*
alignment：对齐方式，一般会使用系统默认提供的9种方式，但是并不是说只有这9种，例如如下的定义。系统提供的9种方式只是预先定义好的。

Alignment实际上是包含了两个属性的，其中第一个参数，-1.0是左边对齐，1.0是右边对齐，第二个参数，-1.0是顶部对齐，1.0是底部对齐。根据这个规则，我们也可以自定义我们需要的对齐方式
*/
