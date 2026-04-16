// import 'package:flutter/material.dart';
// import 'offer_card.dart';
//
// class OfferSection extends StatelessWidget {
//   final String title;
//   final List<OfferCard> offers;
//
//   const OfferSection({
//     super.key,
//     required this.title,
//     required this.offers,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         /// Section title
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//
//         const SizedBox(height: 12),
//
//         /// Horizontal list
//         SizedBox(
//           height: 190,
//           child: ListView.separated(
//             scrollDirection: Axis.horizontal,
//             itemCount: offers.length,
//             separatorBuilder: (_, __) =>
//             const SizedBox(width: 12),
//             itemBuilder: (_, index) => offers[index],
//           ),
//         ),
//
//         const SizedBox(height: 20),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../../offers/models/offer_model.dart';
import 'offer_card.dart';

class OfferSection extends StatelessWidget {
  final String title;
  final List<OfferModel> offers;

  const OfferSection({
    super.key,
    required this.title,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Section title
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 12),

        /// Horizontal list
        SizedBox(
          height: 190,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: offers.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (_, index) {
              return OfferCard(
                offer: offers[index],
              );
            },
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}