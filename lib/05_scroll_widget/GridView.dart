import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView示例'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int idx) {
              return Column(
                children: <Widget>[
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("http://pic29.nipic.com/20130527/7788456_001854644175_2.jpg",)
                      )
                    ),
                  ),
                  Text("$idx")
                ],
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            )
          ),
        ),
      ),
    );
  }
}
