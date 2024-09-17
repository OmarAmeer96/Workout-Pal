import 'package:flutter/material.dart';
import 'package:workout_pal/core/theming/styles.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
    required this.opacityAnimation,
  });

  final Animation<Offset> slidingAnimation;
  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    // AnimatedBuilder is Equal to SetState, But Updating the Current Widget Only.
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Opacity(
            opacity: opacityAnimation.value,
            child: Text(
              "Stay Fit, Stay Healthy!",
              textAlign: TextAlign.center,
              style: Styles.splashViewTextLogoFont.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        );
      },
    );
  }
}
