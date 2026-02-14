import 'package:flutter/material.dart';

class StaggeredAnimatedSlide extends StatefulWidget {
  final Duration delay;
  final Duration? opacityDuration, transfromDuration;
  final Widget child;
  const StaggeredAnimatedSlide({
    super.key,
    this.delay = const Duration(seconds: 0),
    required this.child,
    this.opacityDuration,
    this.transfromDuration,
  });

  @override
  State<StaggeredAnimatedSlide> createState() => _StaggeredAnimatedSlideState();
}

class _StaggeredAnimatedSlideState extends State<StaggeredAnimatedSlide> {
  bool visible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay, () {
      if (mounted) setState(() => visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      duration: widget.transfromDuration ?? const Duration(seconds: 1),
      tween: Tween<Offset>(
        begin: const Offset(-100, 0),
        end: visible ? const Offset(0, 0) : const Offset(-100, 0),
      ),
      curve: Curves.elasticOut,
      builder: (context, Offset value, Widget? child) {
        return Transform.translate(offset: value, child: child);
      },
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: visible ? 1 : 0),
        duration: widget.opacityDuration ?? const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        builder: (context, double value, Widget? child) {
          return Opacity(opacity: value, child: widget.child);
        },
      ),
    );
  }
}
