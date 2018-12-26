import 'package:flutter/material.dart';

void main() => runApp(new FlexLayout());

class FlexLayout extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
		return new MaterialApp(
			title: 'flex layout',
			home: Scaffold(
				appBar: AppBar(
					title: Text('flex布局'),
				),
				body: Flex(
					direction: Axis.horizontal,
					children: <Widget>[
						Expanded(
							flex: 1,
							child: Container(
								child: Text('内容一', style: TextStyle(
									color: Colors.white
								),),
								color: Colors.red,
								height: 50.0,
							),
						),
						Expanded(
							flex: 2,
							child: Container(
								padding: EdgeInsets.only(top: 40.0),
								height: 20.0,
								color: Colors.green,
								child: Text('内容二'),
							),
						)
					],
				),
			),
		);
	  }
}