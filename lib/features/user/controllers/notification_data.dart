import 'package:flutter/material.dart';
import '../models/notification_model.dart';

final List<NotificationModel> notifications = [
  NotificationModel(
    title: "Coffee Corner",
    message: "New offer: 20% OFF on beverages",
    time: "Today, 10:24 AM",
    icon: Icons.local_cafe,
  ),
  NotificationModel(
    title: "Burger Hub",
    message: "Buy 1 Get 1 Free",
    time: "Today, 3:15 PM",
    icon: Icons.fastfood,
  ),
  NotificationModel(
    title: "Fashion Store",
    message: "Flat ₹500 OFF",
    time: "Yesterday",
    icon: Icons.checkroom,
  ),
  NotificationModel(
    title: "Tech World",
    message: "15% OFF on gadgets",
    time: "2 days ago",
    icon: Icons.devices,
  ),
];