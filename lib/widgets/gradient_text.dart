import 'package:flutter/material.dart';

class ProgressGradient extends StatelessWidget {
  const ProgressGradient({
    super.key,
    required this.gradient,
    this.style,
    required this.child,
  });

  final Widget child;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: child,
    );
  }
}
