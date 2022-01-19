import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zoom_drawer/model/menu_item.dart';
import 'package:zoom_drawer/page/help.dart';
import 'package:zoom_drawer/page/menu_page.dart';
import 'package:zoom_drawer/page/notification.dart';
import 'package:zoom_drawer/page/payment_page.dart';
import 'package:zoom_drawer/page/promo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItem currentItem = MenuItems.payment;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1, //ubah gaya drawer style1 - style7
      borderRadius: 40,
      // showShadow: true,
      // angle: -10,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) {
          return MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);

              ZoomDrawer.of(context)!.close();
            },
          );
        },
      ),
    );
  }

  getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return const PaymentPage();
      case MenuItems.promo:
        return const PromoPage();
      case MenuItems.notification:
        return const NotificationPage();
      case MenuItems.help:
        return const HelpPage();
      case MenuItems.aboutUs:
        return const PaymentPage();
      case MenuItems.logout:
        return const PaymentPage();
    }
  }
}
