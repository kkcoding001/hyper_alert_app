import 'package:flutter/material.dart';

import '../widgets/offer_card.dart';
import '../widgets/offer_section.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 10),

                /// Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Local Deals",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(Icons.tune),
                  ],
                ),

                const SizedBox(height: 16),

                /// Search bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFEFEF),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.black54),
                      hintText: "Search offers...",
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Offers
                // offer section (list) -> offer card
                OfferSection(
                  title: "Trending Offers",
                  offers: const [
                    OfferCard(
                      imageUrl: "assets/images/offers/offer3.png",
                      title: "Coffee Corner",
                      location: "Colaba Causeway Market,Mumbai",
                      distance: "1 km away",
                      discount: "20% off",
                    ),
                    OfferCard(
                      imageUrl: "assets/images/offers/offer2.png",
                      title: "Book Haven",
                      location: "Near, Powai Lake, Mumbai",
                      distance: "1.5 km away",
                      discount: "15% off",
                    ),
                    OfferCard(
                      imageUrl: "assets/images/offers/offer4.png",
                      title: "Coffee Corner",
                      location: "Mumbai",
                      distance: "1 km away",
                      discount: "20% off",
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                OfferSection(
                  title: "Popular Near You",
                  offers: const [
                    OfferCard(
                      imageUrl: "assets/images/offers/offer2.png",
                      title: "Pizza Hub",
                      location: "opp. Siddhivinayak Temple, Mumbai",
                      distance: "0.8 km away",
                      discount: "25% off",
                    ),
                    OfferCard(
                      imageUrl: "assets/images/offers/offer4.png",
                      title: "Fashion Store",
                      location: "opp. ISKCON temple, Mumbai",
                      distance: "2 km away",
                      discount: "30% off",
                    ),
                    OfferCard(
                      imageUrl: "assets/images/offers/offer3.png",
                      title: "Fashion Store",
                      location: "Mumbai",
                      distance: "2 km away",
                      discount: "30% off",
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                OfferSection(
                  title: "From Best Shops",
                  offers: const [
                    OfferCard(
                      imageUrl: "assets/images/offers/offer4.png",
                      title: "Electro Mart",
                      location: "opp. ISKCON temple, Mumbai",
                      distance: "3 km away",
                      discount: "10% off",
                    ),
                    OfferCard(
                      imageUrl: "assets/images/offers/offer2.png",
                      title: "Book World",
                      location: "Colaba Causeway Market,Mumbai",
                      distance: "2.5 km away",
                      discount: "15% off",
                    ),
                    OfferCard(
                      imageUrl: "assets/images/offers/offer3.png",
                      title: "Book World",
                      location: "Mumbai",
                      distance: "0.5 km away",
                      discount: "15% off",
                    ),
                  ],
                ),

                const SizedBox(height: 30),

              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Temporary section block
  Widget _sectionPlaceholder(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
