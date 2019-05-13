import 'package:flutter/material.dart';

void main() => runApp(new WrapLayout());


/*　
有些布局只有一行或一列表，当内容溢出时，ui界面会显示溢出的警告. wrap能正好解决这个问题
https://book.flutterchina.club/chapter4/wrap_and_flow.html
*/
/* class WrapLayout extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
		return MaterialApp(
			title: 'wrap layout',
			home: Scaffold(
				appBar: AppBar(
					title: Text('wrap 布局'),
				),
				body: Row(
					children: <Widget>[
						Text('xxxxx123'*1000)
					],
				),
			),
		);
	  }
} */

class WrapLayout extends StatelessWidget{
	@override
	  Widget build(BuildContext context) {
		return MaterialApp(
			title: 'wrap layout',
			home: Scaffold(
				appBar: AppBar(
					title: Text('wrap 布局'),
				),
				body: Wrap(
					alignment: WrapAlignment.end,
					children: <Widget>[
						Text('xxxxx123'*10)
					],
				)
			),
		);
	  }
}