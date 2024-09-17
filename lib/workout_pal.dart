import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:workout_pal/core/routing/app_router.dart';
import 'package:workout_pal/core/routing/routes.dart';
import 'package:workout_pal/core/theming/colors_manager.dart';

class WorkoutPal extends StatelessWidget {
  final AppRouter appRouter;
  const WorkoutPal({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Workout Pal',
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: ColorsManager.scaffoldBackgroundColor,
        ),
        initialRoute: Routes.splashView,
      ),
    );
  }
}
