import 'package:flutter/material.dart';
import 'package:zoom_drawer/model/menu_item.dart';

class MenuPage extends StatelessWidget {
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;

  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/OP.jpeg",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "One Piece",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("Kaizoku"),
                    ],
                  ),
                ],
              ),
              ...MenuItems.all.map(buildMenuItem).toList(),
              const Spacer(flex: 2),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 15),
                child: Row(
                  children: const [
                    Icon(Icons.copyright),
                    SizedBox(width: 10),
                    Text("Muhammad Irfan"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildMenuItem(MenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selected: currentItem == item,
          selectedTileColor: Colors.black26,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
