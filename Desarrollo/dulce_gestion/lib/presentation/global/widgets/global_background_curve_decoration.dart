import 'package:flutter/material.dart';

class GlobalBackgroundCurveDecoration extends StatelessWidget {
  final Color color;
  final double scale;

  const GlobalBackgroundCurveDecoration(
      {super.key, required this.color, required this.scale});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: CustomPaint(
        size: const Size(512, 512),
        painter: _BackgroundCurveDecoration(color: color),
      ),
    );
  }
}

class _BackgroundCurveDecoration extends CustomPainter {
  final Color color;

  _BackgroundCurveDecoration({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(68.265625, 65.570312);
    path_0.lineTo(68.265625, 214.11719);
    path_0.lineTo(68.267625, 214.11719);
    path_0.lineTo(68.267625, 410.77734);
    path_0.lineTo(68.375, 410.77734);
    path_0.arcToPoint(const Offset(68.074219, 414.05663999999996),
        radius: const Radius.elliptical(60.806404, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(const Offset(128.88085999999998, 457.33397999999994),
        radius: const Radius.elliptical(60.806404, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(const Offset(189.6875, 414.05663999999996),
        radius: const Radius.elliptical(60.806404, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(const Offset(189.49805, 410.77734),
        radius: const Radius.elliptical(60.806404, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(189.49805, 274.64062);
    path_0.cubicTo(191.93262000000001, 264.69501, 206.33117000000001, 215.3238,
        252.25, 218.25);
    path_0.cubicTo(
        297.16374, 221.11215, 310.83334, 255.50393, 313.46289, 263.68945);
    path_0.lineTo(313.46289, 291.91992000000005);
    path_0.arcToPoint(const Offset(313.32031, 293.51953000000003),
        radius: const Radius.elliptical(58.967323, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(const Offset(313.46289, 295.11719000000005),
        radius: const Radius.elliptical(58.967323, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(313.46289, 295.87500000000006);
    path_0.lineTo(313.53129, 295.87500000000006);
    path_0.arcToPoint(const Offset(372.28715, 336.79688000000004),
        radius: const Radius.elliptical(58.967323, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(const Offset(431.04301, 295.87500000000006),
        radius: const Radius.elliptical(58.967323, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(431.16409999999996, 295.87500000000006);
    path_0.lineTo(431.16409999999996, 294.52734000000004);
    path_0.arcToPoint(const Offset(431.25399999999996, 293.51953000000003),
        radius: const Radius.elliptical(58.967323, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(const Offset(431.16409999999996, 291.23242000000005),
        radius: const Radius.elliptical(58.967323, 43.278187),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(431.16409999999996, 147.32812000000004);
    path_0.lineTo(431.1192, 147.32812000000004);
    path_0.lineTo(431.1192, 65.570312);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
