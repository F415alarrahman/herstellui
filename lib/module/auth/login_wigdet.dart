import 'package:herstel/utils/color_path.dart';
import 'package:flutter/material.dart';

class BackgroudLoginPage extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = colorprimary
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.3830769);
    path0.cubicTo(
        size.width * 0.0262500,
        size.height * 0.3961538,
        size.width * 0.2068750,
        size.height * 0.4000000,
        size.width * 0.3325000,
        size.height * 0.3784615);
    path0.cubicTo(
        size.width * 0.5400000,
        size.height * 0.3361538,
        size.width * 0.5150000,
        size.height * 0.3238462,
        size.width * 0.6775000,
        size.height * 0.2553846);
    path0.quadraticBezierTo(size.width * 0.7943750, size.height * 0.2088462,
        size.width, size.height * 0.2292308);
    path0.lineTo(size.width, size.height * 0.9415385);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(
        size.width * 0.2500000, size.height, 0, size.height);
    path0.cubicTo(
        size.width * -0.0050000,
        size.height * 0.2826923,
        size.width * -0.0050000,
        size.height * 0.8334615,
        0,
        size.height * 0.3830769);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
