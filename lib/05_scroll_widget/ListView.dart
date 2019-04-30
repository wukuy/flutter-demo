import 'package:flutter/material.dart';

void main() => runApp(new ListViewDemo());

class ListViewDemo extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
		return MaterialApp(
			title: 'list view',
			home: Scaffold(
				appBar: AppBar(
					title: Text('list view'),
				),
				body: ListView.separated(
					itemCount: 100,
					itemBuilder: (context, idx) => Text('$idx'),
					//分割器构造器
					separatorBuilder: (BuildContext context, int index) {
						return Divider(height: 1);
					},
				)
			),
		);
	  }
}