import 'package:flutter/material.dart';

void main() => runApp(new SingleChildScrollDemo());

class SingleChildScrollDemo extends StatelessWidget{
	String str = 'abcdefsfdskalfoewirevkdlsajfldsajfldsafjdoiarewonvdsajfldsajfdkoafksalfj';

	@override
	  Widget build(BuildContext context) {
		return MaterialApp(
			title: 'single child scroll',
			home: Scaffold(
				appBar: AppBar(
					title: Text('滚动'),
				),
				body: Scrollbar(
					child: SingleChildScrollView(
						padding: EdgeInsets.all(10.0),
						child: Center(
							child: Column(
								children: str.split("") 
								//每一个字母都用一个Text显示,字体为原来的两倍
								.map((c) => Text(c, textScaleFactor: 2.0,)) 
								.toList(),
							),
						),
					),
				),
			),
		);
	  }
}
