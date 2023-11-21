import 'package:flutter/material.dart';
import 'package:inventory_tracker/types/type.dart';
import 'package:inventory_tracker/widgets/left_drawer.dart';
import 'package:inventory_tracker/widgets/shop_card.dart';

final List<ShopItem> items = [
  ShopItem("Lihat Item", Icons.checklist, Colors.teal),
  ShopItem("Tambah Item", Icons.add, Colors.blue),
  ShopItem("Logout", Icons.logout, Colors.red),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.inventory),
            SizedBox(width: 8.0),
            Text("Inventory Tracker"),
          ],
        ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5.0),
            const Text(
              "Maurice Yang",
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: items.map((item) => ShopCard(item)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
