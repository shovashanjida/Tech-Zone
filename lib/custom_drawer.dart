import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: SafeArea(
        child: ListView(
          children: [
            buildExpansionTile(context, "Laptop", ["ASUS", "HP"]),
            const Divider(color: Colors.white24),
            buildExpansionTile(context, "Desktop PC", ["Gaming PC", "Office PC"]),
            const Divider(color: Colors.white24),
            buildExpansionTile(context, "PC Components", ["RAM", "SSD", "GPU"]),
            const Divider(color: Colors.white24),
            buildExpansionTile(context, "Smartphone", ["Samsung", "Oppo"]),
            const Divider(color: Colors.white24),
            buildExpansionTile(context, "Monitor", ["ASUS", "LG"]),
          ],
        ),
      ),
    );
  }

  Widget buildExpansionTile(
      BuildContext context, String title, List<String> items) {
    return ExpansionTile(
      collapsedIconColor: Colors.white,
      iconColor: Colors.white,
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 16)),
      children: items.map((item) {
        return ListTile(
          title: Text(item, style: const TextStyle(color: Colors.white70)),
          onTap: () {
            Navigator.pop(context); // close drawer
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductListScreen(
                  brand: item,
                  category: title,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}