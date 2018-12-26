import 'package:flutter/material.dart';

void main() => runApp(new PositionLayout());

class PositionLayout extends StatelessWidget {
	@override
	  Widget build(BuildContext context) {
		return MaterialApp(
			title: 'position layout',
			home: Scaffold(
				appBar: AppBar(
					title: Text('position 布局'),
				),
				body: ConstrainedBox(
					constraints: BoxConstraints.expand(),
					child: Stack(
						// alignment: Alignment.centerRight,
						children: <Widget>[
							Positioned(
								top: 400.0,
								left: 100,
								child: Text("I am Jack"),
							),
						],
					)
				),
			),
		);
	  }
}
