import 'package:flutter/material.dart';
import 'dart:math' as math;

class GlowingMoonHeader extends StatefulWidget {
  const GlowingMoonHeader({super.key});

  @override
  State<GlowingMoonHeader> createState() => _GlowingMoonHeaderState();
}

class _GlowingMoonHeaderState extends State<GlowingMoonHeader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 6), vsync: this)..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final offset = math.sin(_controller.value * 2 * math.pi) * 10;
            return Transform.translate(
              offset: Offset(0, offset),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                      blurRadius: 25,
                      spreadRadius: 5,
                    ),
                  ],
                  gradient: RadialGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary.withOpacity(0.9),
                      Theme.of(context).scaffoldBackgroundColor,
                    ],
                    radius: 0.85,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
