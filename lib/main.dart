import 'package:flutter/material.dart';
import 'features/user/screens/splash_screen.dart';
import 'features/user/screens/onboarding_screen.dart';
import 'features/user/screens/signup_screen.dart';
import 'features/user/screens/login_screen.dart';
import 'features/user/screens/home_screen.dart';


import 'features/user/screens/store_offer_screen.dart';
import 'routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash, // route to open first.
      routes: {
        AppRoutes.splash: (context) => SplashScreen(),
        AppRoutes.onboarding: (context) => OnboardingScreen(),
        AppRoutes.signup: (context) => SignupScreen(),
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
        // AppRoutes.storeOffer: (context) => const StoreOfferScreen(),
      },
    );
  }
}
