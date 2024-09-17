import 'package:flutter/material.dart';
import 'package:workout_pal/core/routing/routes.dart';
import 'package:workout_pal/core/utils/extensions.dart';
import 'package:workout_pal/core/utils/spacing.dart';
import 'package:workout_pal/features/splash/presentation/views/widgets/fading_logo_and_text.dart';
import 'package:workout_pal/features/splash/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Hero(
          tag: "splashViewToHomeView",
          child: FadingLogoAndText(
            opacityAnimation: opacityAnimation,
          ),
        ),
        verticalSpace(20),
        SlidingText(
          slidingAnimation: slidingAnimation,
          opacityAnimation: opacityAnimation,
        ),
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    // Sliding Animation
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    // Opacity Animation
    opacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0),
      ),
    );
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // ignore: use_build_context_synchronously
        context.pushReplacementNamed(Routes.onboardingView);
      },
    );
  }
}
