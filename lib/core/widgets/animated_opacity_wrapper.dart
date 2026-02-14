import 'package:flutter/material.dart';

class AnimatedOpacityWrapper extends StatelessWidget {
  final Widget child;
  final Duration? duration;
  final bool enabled;

  const AnimatedOpacityWrapper({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 600),
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    if (!enabled) return child;

    return TweenAnimationBuilder<double>(
      duration: duration ?? const Duration(milliseconds: 600),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeInOutCubic,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: child,
    );
  }
}
