import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';
import 'success_screen.dart';

class CheckoutScreen extends StatefulWidget {
  final List<Product> cartItems;

  const CheckoutScreen({super.key, required this.cartItems});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  final TextEditingController addressController = TextEditingController();
  //DateTime selectDate = DateTime.now();

  double getTotal() {
    double total = 0;
    for (var item in widget.cartItems) {
      total += item.price;
    }
    return total;
  }

  Future<void> placeOrder() async{
    try{
      final data = await FirebaseFirestore.instance.collection("orders").add({
        "address": addressController.text.trim(),
        "date": FieldValue.serverTimestamp(),
        "creator": FirebaseAuth.instance.currentUser!.uid,
        "price": getTotal(),
        "products": widget.cartItems.map((e) => e.name).toList(),
      });
      print(data.id);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SuccessScreen(),
        ),
      );
    }catch(e){
      print(e);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),

      body: Column(
        children: [

          // Product list
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(widget.cartItems[index].name),
                  subtitle: Text("৳ ${widget.cartItems[index].price}"),
                );
              },
            ),
          ),

          // Total
          Text("Total: ৳ ${getTotal()}"),

          // Address
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: addressController,
              decoration: const InputDecoration(
                hintText: "Enter address",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // Button
          ElevatedButton(
            onPressed: placeOrder,
            child: const Text("Cash on Delivery"),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}