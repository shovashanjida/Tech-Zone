import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'products/laptop.dart';


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
      drawer: const CustomDrawer(),
      
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Laptop()),
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
                onTap: (){//desktop page
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Laptop()),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Laptop(),));
                },
              ),
          ]),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                    onTap: (){//printer page
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Laptop(),));
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
                onTap: (){//monitor page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Laptop(),));
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
                onTap: (){//ram page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Laptop(),));
                },
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                onTap: (){//motherboard page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Laptop(),));
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
                onTap: (){//ssd page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Laptop(),));
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
                onTap: (){//cpu page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Laptop(),));
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}