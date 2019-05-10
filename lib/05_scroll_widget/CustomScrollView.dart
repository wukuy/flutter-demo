import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black.withOpacity(0.2),
              expandedHeight: 260,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network('http://pic29.nipic.com/20130527/7788456_001854644175_2.jpg', fit: BoxFit.fill,),
                title: Text('CustomScrollView'),
              ),
              pinned: true,
              floating: false,
              // snap: true,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                )
              ],
              leading: Icon(Icons.arrow_back),
              elevation: 0,
              // bottom: TabBar(
              //   tabs: <Widget>[
              //     Text('tab1'),
              //     Text('tab2'),
              //     Text('tab3'),
              //   ],
              // )
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: <Widget>[
                    Container(height: 60, child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                    Container(height: 60,child: Text('1')),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}




