import 'package:flutter/material.dart';

void main () => runApp(MaterialApp(
	title: 'a',
	color: Colors.white,
	home: new LearnMaterial(),
));

class LearnMaterial extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterial();
  }
}

class _LearnMaterial extends State{
	@override
	  Widget build(BuildContext context) {
		return Material(
			borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
			color: Colors.blue,
		);
	  }
}