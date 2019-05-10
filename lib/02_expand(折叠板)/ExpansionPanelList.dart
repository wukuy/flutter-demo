import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: ExpansionPanelListDemo(),
  ));
}

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpansionPanelListDemoState();
  }
}

class ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  bool isExpanded = false;
  int curruntIdx;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelListDemo"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          children: [
            _expansionPanel('更多内容1', 0),
            _expansionPanel('更多内容', 1),
            _expansionPanel('更多内容', 2),
            _expansionPanel('更多内容', 3),
            _expansionPanel('更多内容', 4),
            _expansionPanel('更多内容', 5),
          ],
          expansionCallback: (index ,isExpanded){
            setState(() {
              this.isExpanded = !isExpanded;
              curruntIdx = index;
            });
          },
        ),
      ),
    );
  }

  _expansionPanel(String text, int index) {
    return ExpansionPanel(
      isExpanded: isExpanded && index == curruntIdx,
      headerBuilder: (index, opened) {
        return ListTile(
          title: Text(text),
        );
      },
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          height: 100.0,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Icon(
            Icons.security,
            size: 35.0,
          ),
        ),
      ),
    );
  }
}

