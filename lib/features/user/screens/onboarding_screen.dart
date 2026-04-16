import 'package:flutter/material.dart';

import '../../../routes/app_routes.dart';

class OnboardingScreen extends StatefulWidget { // Stateless cannot update UI.
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  /// Controls page movement
  final PageController _controller = PageController();

  /// Track current page
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView( // allows users to swipe horizontally or vertically between different screens or pages
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        children: [
          _pageContent(
            "Discover Local Offers Near You",
            "Save money and explore exclusive local deals in your area.",
            false,
            "assets/images/onboard1.png",
          ),
          _pageContent(
            "Bookmark Your Favorite Shops",
            "Easily save and access offers from shops you love most.",
            true,
            "assets/images/onboard2.png",
          ),
        ],
      ),
    );
  }

  /// Page layout reused for both screens
  Widget _pageContent(String title, String desc, bool isLastPage, String imagePath) {
    return Column(
      children: [

        /// Image placeholder
        Expanded(
          flex: 5,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),

        /// Bottom content section
        Expanded(
          flex: 5,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.grey.shade200,
            child: Column(
              children: [

                const SizedBox(height: 20),

                /// Title
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                /// Description
                Text(desc, textAlign: TextAlign.center),

                const Spacer(),

                /// Indicator dots
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _dot(0), // Creates circle indicator.
                    const SizedBox(width: 6),
                    _dot(1),
                  ],
                ),

                const SizedBox(height: 20),

                /// Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2EC4A6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      if (isLastPage) {
                        // print("Go to Login/Home");
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.signup,
                        );
                      } else {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    child: Text(
                      isLastPage ? "Get Started" : "Next",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Indicator dot
  Widget _dot(int index) {
    return Container(
      width: currentPage == index ? 12 : 8,
      height: currentPage == index ? 12 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
