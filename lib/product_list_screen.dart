import 'package:flutter/material.dart';
import '../data/dummy_products.dart';

class ProductListScreen extends StatelessWidget {
  final String brand;
  final String category;

  const ProductListScreen({
    super.key,
    required this.brand,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {

    final filteredProducts = dummyProducts.where(
          (p) => p.category == category && p.brand == brand,
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("$brand $category"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          final product = filteredProducts[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  // Product Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      product.image,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 15),

                  // Product Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          "৳ ${product.price}",
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 5),

                        const Text(
                          "In Stock",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}