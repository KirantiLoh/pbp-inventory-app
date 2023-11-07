import 'package:flutter/material.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final MaterialColor color;

  ShopItem(this.name, this.icon, this.color);
}

final List<ShopItem> items = [
  ShopItem("Lihat Produk", Icons.checklist, Colors.teal),
  ShopItem("Tambah Produk", Icons.add_shopping_cart, Colors.blue),
  ShopItem("Logout", Icons.logout, Colors.red),
];

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
        shadowColor: Colors.transparent,
      ),
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
