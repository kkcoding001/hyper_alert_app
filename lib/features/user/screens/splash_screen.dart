import 'package:flutter/material.dart';

import 'dart:async';
import '../../../routes/app_routes.dart';
import '../../user/screens/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin { // This enables animation.

  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _animation,

        child: Container(
        width: double.infinity,
        color: const Color(0xFF2EC4A6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// Temporary logo
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.local_offer,
                size: 45,
                color: Color(0xFF2EC4A6),
              ),
            ),

            const SizedBox(height: 20),

            /// App name
            const Text(
              "Hyper Alert",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 6),

            /// Tagline
            const Text(
              "Discover Local Deals",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
      )

    );
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700), // 1200
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();

    /// Navigate after animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 200), () { // 300
          Navigator.of(context).pushReplacement(
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 600),
              pageBuilder: (_, __, ___) => const OnboardingScreen(),
              transitionsBuilder: (_, animation, __, child) {
                return FadeTransition(opacity: animation, child: child);
              },
            ),
          );
        });
      }
    });


  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


}
