import 'package:flutter/material.dart';
import 'package:tech_zone_ui/data/dummy_products.dart';
import 'package:tech_zone_ui/global_variable.dart';

import 'saved_builder_page.dart';

class PCBuilderPage extends StatefulWidget {
  const PCBuilderPage({super.key});

  @override
  State<PCBuilderPage> createState() => _PCBuilderPageState();
}

class _PCBuilderPageState extends State<PCBuilderPage> {
  @override
  Widget build(BuildContext context) {
    final pcComp = dummyProducts.where((product) =>
    product.category== "PC Components" ||
        product.category == "Monitor" ||
        product.category == "Desktop PC",).toList();
    return Scaffold(
        appBar: AppBar(title: Text('PC Builder'),
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Build Your PC', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(
                width: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 60,
                    //width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(//fixedSize: Size(80, 60),
                            overlayColor: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            shadowColor: Colors.blue,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                        ),
                        onPressed: (){
                          savedBuildItems.isEmpty?
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                              Text("Build is empty!"),
                              duration: Duration(milliseconds: 300),
                            )
                          )
                          : ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                          content:
                          Text("Added to cart successfully"),
                          duration: Duration(milliseconds: 300),
                          )
                          );
                          cartItems.addAll(savedBuildItems);
                          savedBuildItems.clear();
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/icons/cart.png',height: 30,),
                            SizedBox(height: 0,),
                            Text('Add to cart'),
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    //width: 95,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(//fixedSize: Size(80, 60),
                            overlayColor: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            shadowColor: Colors.lightGreen,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                        ),
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                builder:
                                    (context) => SavedBuilderPage(),
                              )
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/icons/builder.png',height: 30,),
                            SizedBox(height: 0,),
                            Text('Save Build'),
                          ],
                        )
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    //width: 95,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(//fixedSize: Size(80, 60),
                            overlayColor: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            shadowColor: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4))
                        ),
                        onPressed: (){
                          setState(() {
                            savedBuildItems.isEmpty?
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content:
                                    Text("Build is empty"),
                                  duration: Duration(milliseconds: 300),
                                ),
                            )
                            :ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                Text("All cleared"),
                                duration: Duration(milliseconds: 300),
                              ),
                            );
                            savedBuildItems.clear();
                          });
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/icons/delete.png',height: 30,),
                            SizedBox(height: 0,),
                            Text('All clear'),
                          ],
                        )
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: pcComp.length,
                  itemBuilder: (context, index) {
                    final product = pcComp[index];
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
                        SizedBox(
                          width: double.infinity,
                          height: 49,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(//fixedSize: Size(80, 60),
                              backgroundColor: Colors.black,
                            ),
                              onPressed: () {
                              setState(() {
                                savedBuildItems.add(product);
                              });
                              },
                              child: Text("Add to Build",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                )
                                ,),
                          ),
                        ),
                      ],
                    ),
                  );
                },),
              ),
            ],
          ),
        )
    );
  }
}