import 'package:flutter/material.dart';

class Laptop extends StatelessWidget{
  const Laptop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Laptop page'),
        ),
        body: Center(
          child: Text('Laptop Page',
            style: TextStyle(fontWeight: FontWeight.w600,
                color: Colors.black),),
        )
    );
  }
}