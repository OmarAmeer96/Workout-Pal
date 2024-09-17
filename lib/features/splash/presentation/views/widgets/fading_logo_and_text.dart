import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workout_pal/core/theming/styles.dart';
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
              SvgPicture.asset(
                AssetsData.appLogo1Svg,
                height: 100.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Stay Fit, Stay Healthy!",
                textAlign: TextAlign.center,
                style: Styles.splashViewTextLogoFont.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
