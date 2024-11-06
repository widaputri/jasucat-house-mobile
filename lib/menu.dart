import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Commerce App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.list),
              label: const Text("Lihat Daftar Produk"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 179, 216, 245),
              ),
              onPressed: () {
                _showSnackbar(context, "Kamu telah menekan tombol Lihat Daftar Produk");
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Tambah Produk"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 168, 233, 170),
              ),
              onPressed: () {
                _showSnackbar(context, "Kamu telah menekan tombol Tambah Produk");
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 241, 181, 177),
              ),
              onPressed: () {
                _showSnackbar(context, "Kamu telah menekan tombol Logout");
              },
            ),
          ],
        ),
      ),
    );
  }
}