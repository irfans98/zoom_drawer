import 'package:flutter/material.dart';
import 'package:zoom_drawer/widget/menu_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Page"),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        leading: const MenuWidget(),
      ),
    );
  }
}
