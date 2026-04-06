import 'package:flutter/material.dart';
import '../models/product.dart';
import 'success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Product> cartItems;

  const CheckoutScreen({super.key, required this.cartItems});

  @override
  Widget build(BuildContext context) {

    double total = 0;
    for (var item in cartItems) {
      total += item.price;
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),

      body: Column(
        children: [

          // Product list
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index].name),
                  subtitle: Text("৳ ${cartItems[index].price}"),
                );
              },
            ),
          ),

          // Total
          Text("Total: ৳ $total"),

          // Address
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Enter address",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SuccessScreen(),
                ),
              );
            },
            child: const Text("Cash on Delivery"),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}