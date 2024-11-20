import 'package:flutter/material.dart';
import 'package:jasucat_house/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product.fields.description,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16),
            Text(
              "Price: ${product.fields.price}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16),
            Text(
              "Stock: ${product.fields.stock}",
              style: const TextStyle(fontSize: 16.0),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Products'),
            ),
          ],
        ),
      ),
    );
  }
}
