import 'package:flutter/material.dart';

import '../widgets/offer_item.dart';

class StoreOfferScreen extends StatelessWidget {

  final String storeName;

  const StoreOfferScreen({
    super.key,
    required this.storeName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              /// Top Bar
              Padding(
                padding: const EdgeInsets.only(top: 8), // space from status bar
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          storeName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 48), // balance spacing
                  ],
                ),
              ),

              const SizedBox(height: 8),

              /// Store Image Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/offers/sf1.png",
                        height: 230,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      /// Bottom gradient overlay
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.6),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ),

                      /// Store details text
                      Positioned(
                        left: 16,
                        bottom: 22,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              storeName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text("• Coffee Shop",
                                style: TextStyle(color: Colors.white, fontSize: 15)),
                            Text("• Mumbai",
                                style: TextStyle(color: Colors.white, fontSize: 15)),
                            Text("• (+91) 1234567890",
                                style: TextStyle(color: Colors.white, fontSize: 15)),
                            Text("• Open 7 AM – 7 PM",
                                style: TextStyle(color: Colors.white, fontSize: 15)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// TODO: Offer list goes here next

              OfferItem(
                expiry: "Expires in 1 day",
                title: "Free Pastry with Coffee",
                subtitle: "Available until 11 AM",
                imageUrl: "assets/images/offers/offer2.png",
              ),

              OfferItem(
                expiry: "Expires in 3 days",
                title: "Buy 1 Get 1 Free",
                subtitle: "Valid for dine-in only",
                imageUrl: "assets/images/offers/offer3.png",
              ),

              OfferItem(
                expiry: "Expires in 7 days",
                title: "10% Off Your Order",
                subtitle: "Minimum spend of \$20",
                imageUrl: "assets/images/offers/offer4.png",
              ),




            ],
          ),
        ),
      ),
    );
  }
}
