import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
		return new MaterialApp(
			title: 'app',
			home: new Scaffold(
				appBar: AppBar(
					title: Text('title'),
				),
				body: Column(
					// 主轴
					mainAxisAlignment: MainAxisAlignment.center,
					// 交叉轴
					crossAxisAlignment: CrossAxisAlignment.center,
					children: <Widget>[
						Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								Text('内容１')
							],
						),
						Text('xx1'*10)
					],
				)
			),
		);
	  }
}

