import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
	title: 'xxx',
	home: new NewRouter(),
));

class Todo{
	final String title;
	final String description;

	Todo(this.title, this.description);
}

class NewRouter extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
		return Scaffold(
				appBar: AppBar(
					title: Text('路由'),
				),
				body: new Center(
					child: RaisedButton(
						child: Text('打开一个新的页面'),
						onPressed: () {
							Navigator.push(
								context,
								new MaterialPageRoute(builder: (context) => new SecondScreen(new Todo('标题', '描述内容'))),
							);
						}
					)
				),
			);
	  }
}

class SecondScreen extends StatelessWidget{
	final Todo todo;
	SecondScreen(this.todo);
	@override
	  Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('第二个路由页面'),
			),
			body: Center(
				child: FlatButton(
					child: Text('回到上一页${todo.description}'),
					onPressed: () {
						Navigator.pop(context);
					},
				),
			),
		);
	  }
}