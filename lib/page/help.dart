import 'package:flutter/material.dart';
import 'package:zoom_drawer/widget/menu_widget.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help Page"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        leading: const MenuWidget(),
      ),
    );
  }
}
