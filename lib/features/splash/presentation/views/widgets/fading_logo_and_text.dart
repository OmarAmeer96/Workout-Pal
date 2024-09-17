import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workout_pal/core/utils/assets.dart';

class FadingLogoAndText extends StatelessWidget {
  const FadingLogoAndText({
    super.key,
    required this.opacityAnimation,
  });

  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: opacityAnimation,
      builder: (context, _) {
        return Opacity(
          opacity: opacityAnimation.value,
          child: Column(
            children: [
              Image.asset(
                AssetsData.appLogo1png,
                height: 150.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
