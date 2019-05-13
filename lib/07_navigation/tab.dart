import 'package:flutter/material.dart';

void main() => runApp(new ColorDemo());

final List tabList = [
  {'name': '张三', 'content': '张三内容'},
  {'name': '李四', 'content': '李四内容'},
  {'name': '张三', 'content': '张三内容'},
  {'name': '李四', 'content': '李四内容'},
  {'name': '张三', 'content': '张三内容'},
  {'name': '李四', 'content': '李四内容'},
  {'name': '张三', 'content': '张三内容'},
  {'name': '李四', 'content': '李四内容'},
  {'name': '张三', 'content': '张三内容'},
  {'name': '李四', 'content': '李四内容'}
];

class ColorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'color demo',
        home: DefaultTabController(
          length: tabList.length,
          child: Scaffold(
              appBar: AppBar(
                title: Text('Colors'),
                bottom: TabBar(
					isScrollable: true,
					tabs: tabList.map((item) {
					  return Tab(text: item['name']);
					}).toList(),
                ),
              ),
              body: new MyDemo()),
        ));
  }
}

class MyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: tabList.map((item) {
        return Tab(text: item['content']);
      }).toList(),
    );
  }
}
