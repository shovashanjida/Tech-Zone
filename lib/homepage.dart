import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'product_list_screen.dart';


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home'),
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,),
        drawer: const CustomDrawer(),//Susmita

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(crossAxisCount: 3,
            children: [
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                        width: 100,
                        height: 100,
                        child:
                        Image.asset('assets/homepageImage/smartphone1.png')
                    ),
                    Text('Smartphone'),
                  ],
                ),
                //smartphone
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "Smartphone",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/desktop1.png'),
                    ),
                    Text('Desktop'),
                  ],
                ),
                //desktop
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category:"Desktop PC",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/laptop1.png'),
                    ),
                    Text('Laptop'),
                  ],
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "Laptop",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/printer1.png'),
                    ),
                    Text('Printer')
                  ],
                ),
                //printer gpu
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "Smartphone",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/monitor1.png'),
                    ),
                    Text('Monitor'),
                  ],
                ),
                //monitor
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "Monitor",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/ram1.png'),
                    ),
                    Text('RAM'),
                  ],
                ),
                //ram
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "PC Components",
                        brand: "RAM",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/motherboard1.png'),
                    ),
                    Text('MotherBoard'),
                  ],
                ),
                //motherboard
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "PC Components",
                        brand: "RAM",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/ssd1.png'),
                    ),
                    Text('SSD'),
                  ],
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "PC Components",
                        brand: "SSD",
                      ),
                    ),
                  );
                },
              ),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/homepageImage/cpu1.png'),
                    ),
                    Text('Processor'),
                  ],
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductListScreen(
                        category: "PC Components",
                        brand: "GPU",
                      ),
                    ),
                  );
                },
              ),
            ],),
        )
    );
  }
}