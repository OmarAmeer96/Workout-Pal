import 'package:flutter/material.dart';
import 'package:workout_pal/core/routing/app_router.dart';
import 'package:workout_pal/core/shared_prefs/shared_prefs.dart';
import 'package:workout_pal/workout_pal.dart';

void main() async {
  // Make sure WidgetsBinding is initialized before Firebase (runApp won't do be triggered before them).
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Shared Preferences
  await initSharedPrefsAndGetData();

runApp(
    WorkoutPal(
      appRouter: AppRouter(),
    ),
  );
}

Future<void> initSharedPrefsAndGetData() async {
  await SharedPrefs.cacheintialization();
}
