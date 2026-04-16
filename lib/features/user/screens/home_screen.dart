import 'package:flutter/material.dart';

import '../widgets/offer_card.dart';
import '../../offers/data/dummy_offers.dart';
import '../../offers/models/offer_model.dart';
import '../widgets/offer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final trending = trendingOffers;
    final popular = popularOffers;
    final best = bestShopOffers;

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
                  children: const [
                    Text(
                      "Local Deals",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.tune),
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

                /// Trending Offers
                OfferSection(
                  title: "Trending Offers",
                  offers: trending,
                ),

                const SizedBox(height: 20),

                /// Popular Near You
                OfferSection(
                  title: "Popular Near You",
                  offers: popular,
                ),

                const SizedBox(height: 20),

                /// From Best Shops
                OfferSection(
                  title: "From Best Shops",
                  offers: best,
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Reusable Offer Section
  Widget _buildOfferSection(String title, List<OfferModel> offers) {
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

        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: offers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: OfferCard(
                  offer: offers[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}