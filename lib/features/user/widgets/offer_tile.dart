import 'package:flutter/material.dart';

class OfferTile extends StatelessWidget {
  final String shopName;
  final String offer;
  // final String condition;
  final String expiry;
  final String image;

  const OfferTile({
    super.key,
    required this.shopName,
    required this.offer,
    required this.expiry,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [

          /// Text content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shopName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    // color: Colors.blueGrey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 4),

                Text(
                  offer,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  expiry,
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          /// Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 90,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}