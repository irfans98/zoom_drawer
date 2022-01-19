import 'package:flutter/material.dart';
import 'package:zoom_drawer/widget/menu_widget.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Promo Page"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: const MenuWidget(),
      ),
    );
  }
}
