import 'package:flutter/material.dart';
import 'package:tech_zone_ui/global_variable.dart';
import 'products/checkout_screen.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: cartItems.isEmpty ?
        Center(
          child: Text("Oops! Your Cart is empty!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,

            ),
          ),
        )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final product = cartItems[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 70,
                                height: 70,
                                child: Image.asset(product.image,)),
                            Flexible(
                              child: Text(product.name,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tk ${product.price}", //will show the value of product.price as text
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                setState(() {
                                  cartItems.removeAt(index);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text("Removed"),
                                        duration: Duration(milliseconds: 300),
                                      )
                                  );
                                });
                              },
                              child: Column(
                                children: [
                                  Image.asset('assets/icons/delete.png',height: 20,),
                                  SizedBox(height: 0,),
                                  //Text('Remove'),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
                SizedBox(
                  width: double.infinity,
                  height: 49,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutScreen(cartItems: cartItems),
                        ),
                      );
                    },
                    icon:
                    Icon(
                      Icons.shopping_cart_checkout,
                      size: 20,color: Colors.white,),
                    label:
                    Text(
                        'Checkout' ,
                    style: TextStyle(
                      color: Colors.white,
                    )),

                  ),
                  ),
                ],
        ),
      )
    );
  }
}