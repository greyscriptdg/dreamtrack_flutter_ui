import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedSleepRing extends StatelessWidget {
  final double progress;
  const AnimatedSleepRing({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(160, 160),
      painter: SleepRingPainter(progress, Theme.of(context).colorScheme.primary),
      child: Center(
        child: Text(
          '${(progress * 100).toInt()}%',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}

class SleepRingPainter extends CustomPainter {
  final double progress;
  final Color color;

  SleepRingPainter(this.progress, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint basePaint = Paint()
      ..color = color.withOpacity(0.15)
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke;

    final Paint progressPaint = Paint()
      ..shader = SweepGradient(
        colors: [color, color.withOpacity(0.2)],
        startAngle: 0.0,
        endAngle: 2 * pi,
      ).createShader(Rect.fromCircle(center: size.center(Offset.zero), radius: size.width / 2))
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2, basePaint);
    canvas.drawArc(Rect.fromCircle(center: size.center(Offset.zero), radius: size.width / 2), -pi / 2,
        2 * pi * progress, false, progressPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
