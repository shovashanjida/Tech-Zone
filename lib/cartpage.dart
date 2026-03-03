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
      body: Align(
        alignment: AlignmentGeometry.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.lightBlueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )
                ),
                  onPressed: (){},
                  child: Column(
                    children: [
                      Icon(Icons.shopping_cart_checkout,size: 20,),
                      Text('Checkout'),
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}