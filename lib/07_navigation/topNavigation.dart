import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class Tabs {
    final icon;
    final title;
    const Tabs({this.title, this.icon});
}

const List<Tabs> tabs = const <Tabs>[
    const Tabs(title: 'CAR', icon: Icons.directions_car),
    const Tabs(title: 'BICYCLE', icon: Icons.directions_bike),
    const Tabs(title: 'BOAT', icon: Icons.directions_boat),
    const Tabs(title: 'BUS', icon: Icons.directions_bus),
    const Tabs(title: 'TRAIN', icon: Icons.directions_railway),
    const Tabs(title: 'WALK', icon: Icons.directions_walk),
];

class MyApp extends StatelessWidget{
    @override
      Widget build(BuildContext context) {
        // TODO: implement build
        return new MaterialApp(
            title: '我是app',
            home: new DefaultTabController(
                length: tabs.length,
                child: Scaffold(
                    appBar: new AppBar(
                        title: new Text('我是标题'),
                        bottom: new TabBar(
                            // isScrollable: true,
                            tabs: tabs.map((tab) {
                                return new Tab(
                                    text: tab.title,
                                    icon: new Icon(tab.icon),
                                );
                            }).toList(),
                        ),
                    ),
                    body: new TabBarView(
                        // children: tabs.map((Tabs tab) {
                        // return new Padding(
                        //     padding: const EdgeInsets.all(16.0),
                        //     child: new Text(tab.title),
                        // );
                        // }).toList(),
                        children: <Widget>[
                            new Text('1'),
                            new Text('2'),
                            new Text('3'),
                            new Text('4'),
                            new Text('5'),
                            new Text('6'),
                        ],
                    ),
                ),
            ),
        );
      }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Tabs choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}