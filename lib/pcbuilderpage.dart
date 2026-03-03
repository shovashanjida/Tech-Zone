import 'package:flutter/material.dart';

class PCBuilderPage extends StatefulWidget {
  const PCBuilderPage({super.key});

  @override
  State<PCBuilderPage> createState() => _PCBuilderPageState();
}

class _PCBuilderPageState extends State<PCBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PC Builder'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text('Build Your PC', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(
                width: 16,
              ),
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
                    onPressed: (){},
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
                width: 2,
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
                    onPressed: (){},
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
                width: 2,
              ),
              SizedBox(
                height: 60,
                //width: 95,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(//fixedSize: Size(80, 60),
                      overlayColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 18),
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                  ),
                    onPressed: (){},
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
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Text('Core Elements:',
                    style: TextStyle(fontSize: 20)),
                   Text('1. Processor', style: TextStyle(fontSize: 15)),
                   Text('2. RAM', style: TextStyle(fontSize: 15)),
                   Text('3. Monitor', style: TextStyle(fontSize: 15))
              ],
            ),
          )
        ],
      )
    );
  }
}