import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'myapp', home: new _Home());
  }
}

class _Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }
}

class _HomeState extends State {
  // 当前页面
  int page = 0;
  PageController pageController;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: PageView(
          children: <Widget>[
            new Text('页面1'),
            new Text('页面2'),
            new Text('页面3'),
            new Text('页面4'),
          ],
          onPageChanged: (idx) {
            print(idx);
            setState(() {
              page = idx;
            });
          },
          controller: pageController,
        ),
        bottomNavigationBar: new BottomNavigationBar(
            items: [
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.laptop_chromebook),
                  title: new Text("主页"),
                  backgroundColor: Colors.grey),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.list),
                  title: new Text("分类"),
                  backgroundColor: Colors.grey),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.local_grocery_store),
                  title: new Text("购物车")),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.person), title: new Text("我的"))
            ],
            onTap: (idx) {
              // 页面跳转
              pageController.animateToPage(idx,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease);
            },
            currentIndex: page));
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: page);
  }
}
