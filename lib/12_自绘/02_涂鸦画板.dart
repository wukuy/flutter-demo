import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my app'),
        ),
        body: CustomPaint(
          painter: SignaturePainter(),
        ),
      ),
    );
  }
}

class SignaturePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Paint _paint = new Paint()
    ..color = Colors.blueAccent
    ..strokeCap = StrokeCap.round
    ..isAntiAlias = true
    ..strokeWidth = 10.0
    ..style = PaintingStyle.stroke;
    // 线
    canvas.drawLine(Offset(20.0, 20.0), Offset(100.0, 20.0), _paint);
    // 多点连线
    canvas.drawPoints(PointMode.polygon,  [
          Offset(20.0, 130.0),
          Offset(100.0, 210.0),
          Offset(100.0, 310.0),
          Offset(200.0, 310.0),
          Offset(200.0, 210.0),
          Offset(280.0, 130.0),
          Offset(20.0, 130.0),
        ], _paint);
        _paint.color = Colors.black;
    canvas.drawCircle(Offset(200, 450), 100, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    
    return false;
  }
  
}

