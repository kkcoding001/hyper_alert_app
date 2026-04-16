import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';

import '../../../routes/app_routes.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Column(
                    children: [

                      const SizedBox(height: 40),

                      /// Title
                      const Text(
                        "Discover local deals",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      /// Subtitle
                      const Text(
                        "Sign up to find the best offers near you",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54),
                      ),

                      const SizedBox(height: 25),

                      /// Social buttons
                      Row(
                        children: [
                          Expanded(
                            child: _socialButton(
                              "Google",
                              "assets/images/google_img.png",
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: _socialButton(
                              "Apple",
                              "assets/images/apple_img.png",
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 18),

                      const Text(
                        "or continue with",
                        style: TextStyle(color: Colors.teal),
                      ),

                      const SizedBox(height: 18),

                      /// Email
                      _inputField("Email"),

                      const SizedBox(height: 14),

                      /// Password
                      _inputField("Password", isPassword: true),

                      const SizedBox(height: 14),

                      /// Confirm password
                      _inputField("confirm password", isPassword: true),

                      const SizedBox(height: 20),

                      /// Sign up button
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2EC4A6),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

                      /// Bottom text
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: "Already have an account? ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,),
                              ),
                              TextSpan(
                                text: "Log In",
                                style: const TextStyle(
                                    color: Colors.teal,
                                    fontSize: 16,),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, AppRoutes.login);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  /// Social login button
  Widget _socialButton(String text, String iconPath) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFDCE3E5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath, height: 20),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  /// Input field
  Widget _inputField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFDCE3E5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
