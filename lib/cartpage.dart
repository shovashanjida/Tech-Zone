import 'package:flutter/material.dart';

class CartPage extends StatefulWidget{
  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPageState();

}

class _CartPageState extends State<CartPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,),
      body: Column(
        children: [
          Center(child: ElevatedButton(onPressed: (){},
              child: Text('Checkout')
          )
          )
        ],
      ),
    );
  }
}