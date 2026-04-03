import 'package:flutter/material.dart';
import 'package:tech_zone_ui/global_variable.dart';

class SavedBuilderPage extends StatelessWidget{
  const SavedBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My saved Build"),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: savedBuildItems.isEmpty ?
      Center(
        child: Text("Oops! Your Build is empty!",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,

        ),),
      )
      : ListView.builder(
        itemCount: savedBuildItems.length,
        itemBuilder: (context, index) {
          final product = savedBuildItems[index];
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
                  Center(
                    child: SizedBox(
                      height: 120,
                      child: Image.asset(product.image),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(product.name ,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    "Tk ${product.price}", //will show the value of product.price as text
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6,),
                  Text(
                    "In Stock",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6,),
                ],
              ),
        );
      },)
    );
  }
}