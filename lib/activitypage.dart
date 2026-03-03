import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget{
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPage();
}

class _ActivityPage extends State<ActivityPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Activity'),
      backgroundColor: Colors.black87,
        foregroundColor: Colors.white,),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Orders',
            style: TextStyle(fontSize: 26,
                color: Colors.black),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                //width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(//fixedSize: Size(80, 60),
                        overlayColor: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        shadowColor: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))
                    ),
                    onPressed: (){},
                    child: Column(
                      children: [
                        //Image.asset('assets/icons/cart.png',height: 30,),
                        Icon(Icons.payment),
                        SizedBox(height: 0,),
                        Text('To Pay'),
                      ],
                    )
                ),
              ),
              /*SizedBox(
                width: 2,
              ),*/
              SizedBox(
                height: 60,
                //width: 95,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(//fixedSize: Size(80, 60),
                        overlayColor: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))
                    ),
                    onPressed: (){},
                    child: Column(
                      children: [
                        //Image.asset('assets/icons/delete.png',height: 30,),
                        Icon(Icons.backpack),
                        SizedBox(height: 0,),
                        Text('To Ship'),
                      ],
                    )
                ),
              ),
              /*SizedBox(
                width: 2,
              ),*/
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
                        //Image.asset('assets/icons/builder.png',height: 30,),
                        Icon(Icons.local_shipping),
                        SizedBox(height: 0,),
                        Text('To Receive'),
                      ],
                    )
                ),
              ),
            ],
          ),
            ],
          ),
    );
  }
}