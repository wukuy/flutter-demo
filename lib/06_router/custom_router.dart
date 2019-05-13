import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
	title: 'router',
	routes: {
		'/': (context) => CustomRouter(),
		'/secondPage': (context) => SecondPage()
	}
));

class CustomRouter extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
			return Scaffold(
				appBar: AppBar(
					title: Text('路由'),
				),
				body: Center(
					child: RaisedButton(
						child: Text('跳转新路由'),
						onPressed: () {
							Navigator.of(context).pushNamed('/secondPage');
						},
					),
				),
			);
	  }
}

class SecondPage extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
			return Scaffold(
				appBar: AppBar(
					title: Text('第二个路由'),
				),
				body: Center(
					child: RaisedButton(
						child: Text('回到第一个页面'),
						onPressed: () {
							// Navigator.of(context).pushNamed('/');
							Navigator.pop(context);
						},
					),
				),
			);
	  }
}

