import 'package:flutter/material.dart';
import '../widgets/offer_tile.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),

              /// Title
              const Center(
                child: Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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

              const SizedBox(height: 16),

              /// Category chips
              // SizedBox(
              //   height: 40,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: const [
              //       ChipItem("Food"),
              //       ChipItem("Fashion"),
              //       ChipItem("Electronics"),
              //       ChipItem("Home"),
              //       ChipItem("Beauty"),
              //     ],
              //   ),
              // ),

              const SizedBox(height: 20),

              /// Offers title
              const Text(
                "Offers",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              /// Offer list
              Expanded(
                child: ListView(
                  children: const [
                    OfferTile(
                      shopName: "Coffee Corner",
                      offer: "20% OFF on all beverages",
                      expiry: "Expires in 2 days",
                      image: "assets/images/offers/offer1.png",
                    ),

                    OfferTile(
                      shopName: "Burger Hub",
                      offer: "Buy 1 Get 1 Free",
                      expiry: "Expires today",
                      image: "assets/images/offers/offer2.png",
                    ),

                    OfferTile(
                      shopName: "Style Haven",
                      offer: "Flat ₹500 OFF",
                      expiry: "Expires in 3 days",
                      image: "assets/images/offers/offer1.png",
                    ),

                    OfferTile(
                      shopName: "Tech World",
                      offer: "15% OFF on accessories",
                      expiry: "Expires in 5 days",
                      image: "assets/images/offers/offer2.png",
                    ),

                    OfferTile(
                      shopName: "Pizza Palace",
                      offer: "Free Coke with Pizza",
                      expiry: "Expires today",
                      image: "assets/images/offers/offer1.png",
                    ),

                    OfferTile(
                      shopName: "Beauty Glow",
                      offer: "30% OFF on skincare",
                      expiry: "Expires in 1 week",
                      image: "assets/images/offers/offer2.png",
                    ),

                    OfferTile(
                      shopName: "Home Decor",
                      offer: "10% OFF storewide",
                      expiry: "Expires in 4 days",
                      image: "assets/images/offers/offer1.png",
                    ),

                    OfferTile(
                      shopName: "Book Haven",
                      offer: "Buy 2 Get 1 Free",
                      expiry: "Expires in 6 days",
                      image: "assets/images/offers/offer2.png",
                    ),

                    OfferTile(
                      shopName: "Fitness Zone",
                      offer: "Free 1-week trial",
                      expiry: "Expires tomorrow",
                      image: "assets/images/offers/offer1.png",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}