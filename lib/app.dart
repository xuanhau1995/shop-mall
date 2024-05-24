import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shopping_mall/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shopping_mall/util/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
