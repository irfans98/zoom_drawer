import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;

  const MenuItem(this.title, this.icon);
}

class MenuItems {
  static const payment = MenuItem("Payment", Icons.payment);
  static const promo = MenuItem("Promo", Icons.card_giftcard);
  static const notification = MenuItem("Notification", Icons.notifications);
  static const help = MenuItem("Help", Icons.info_outline);
  static const aboutUs = MenuItem("About Us", Icons.person);
  static const logout = MenuItem("Logout", Icons.logout_rounded);

  static const all = <MenuItem>[
    payment,
    promo,
    notification,
    help,
    aboutUs,
    logout,
  ];
}
