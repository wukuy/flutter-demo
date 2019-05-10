import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ColorPainter'),

        ),
        body: Center(
          child: CustomPaint(
          painter: ColorPainter(),
          size: Size(100, 100),
        ),
        ),
      ),
    );
  }
}

class ColorPainter extends CustomPainter{
    final red = Color.fromRGBO(255, 0, 0, 1);
  final blue = Color.fromRGBO(0, 0, 255, 1);
  double _degToRad(double deg) => deg * (pi / 180);
  double _radToDeg(double rad) => rad * (180.0 / pi);

  @override
  void paint(Canvas canvas, Size size) {
      //     final paint = Paint();
      // final rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
      // // 注意这一句
      // // canvas.clipRect(rect);
      // // paint.color = blue;
      // // canvas.drawRect(rect, paint);
      // paint.color = red;
      // paint.style = PaintingStyle.stroke;
      // paint.strokeWidth = 10;
      // canvas.drawCircle(Offset.zero, size.height, paint);
      final Rect arcRect = Rect.fromCircle(center: Offset.zero, radius: 80);
      final progressPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 20
        ..strokeCap = StrokeCap.round
        ..shader = SweepGradient(
          // endAngle: 0,
          colors: [
            Colors.white,
            Colors.black
          ]
        ).createShader(arcRect);


      final angle = 360.0 * 10;
      canvas.rotate(_degToRad(-90));
      canvas.drawArc(arcRect, 0.2, _degToRad(180), false, progressPaint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
