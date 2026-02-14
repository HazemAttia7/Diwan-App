import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poem_app/core/widgets/animated_opacity_wrapper.dart';

class StaggeredAnimatedOpacityTranslation extends StatefulWidget {
  final Widget widget;
  final double? xOffset, yOffset;
  final Duration? transformDuration, opacityDuration;
  final Duration delay;
  
  const StaggeredAnimatedOpacityTranslation({
    super.key,
    required this.widget,
    this.xOffset,
    this.yOffset,
    this.transformDuration,
    this.opacityDuration,
    this.delay = Duration.zero,
  });

  @override
  State<StaggeredAnimatedOpacityTranslation> createState() =>
      _StaggeredAnimatedOpacityTranslationState();
}

class _StaggeredAnimatedOpacityTranslationState
    extends State<StaggeredAnimatedOpacityTranslation> {
  bool _show = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay, () {
      if (mounted) setState(() => _show = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacityWrapper(
      duration: widget.opacityDuration,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: _show ? 1 : 0),
        duration: widget.transformDuration ?? const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        builder: (BuildContext context, double val, Widget? child) {
          return Transform.translate(
            offset: Offset(
              (1 - val) * (widget.xOffset ?? 50.w),
              (1 - val) * (widget.yOffset ?? 0),
            ),
            child: child,
          );
        },
        child: widget.widget,
      ),
    );
  }
}