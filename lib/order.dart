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
      appBar: AppBar(title: Text('Orders'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Orders',
            style: TextStyle(fontSize: 26,
                color: Colors.black),),
        ],
      ),
    );
  }
}