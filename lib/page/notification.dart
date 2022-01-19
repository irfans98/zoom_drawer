import 'package:flutter/material.dart';
import 'package:zoom_drawer/widget/menu_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Page"),
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: const MenuWidget(),
      ),
    );
  }
}
