import 'package:flutter/material.dart';
import '../data/dummy_products.dart';

class Laptop extends StatelessWidget{
  const Laptop({super.key});

  @override
  Widget build(BuildContext context) {
    final laptops = dummyProducts.where((product) => product.category == "Laptop").toList();
    //why writing product instead of element
    return Scaffold(
        appBar: AppBar(title: Text('Laptop page'),
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
        ),

        body: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: laptops.length,

          itemBuilder:(context, index) {
            final product = laptops[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: InkWell(
                onTap: (){
                  //navigation to details page
                },

                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                    ],
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image
                      Center(
                        child: SizedBox(
                          height: 120,
                          child: Image.asset(product.image),
                        ),
                      ),
                      const SizedBox(height: 10),

                      //laptop name
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,//why this doesn't show on my suggestion
                        ),
                      ),
                      const SizedBox(height: 8),

                      Text(
                        "৳ ${product.price}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),

                      const Text(
                        "In Stock",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
    );
  }
}