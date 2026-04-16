class OfferModel {
  final String id;
  final String title;
  final String description;
  final String storeName;
  final String imageUrl;
  final String location;
  final String distance;
  final double discount;
  final DateTime validTill;

  OfferModel({
    required this.id,
    required this.title,
    required this.description,
    required this.storeName,
    required this.imageUrl,
    required this.location,
    required this.distance,
    required this.discount,
    required this.validTill,
  });
}