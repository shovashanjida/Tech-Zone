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
      body:  Center(
        child: Text(
          "Activity Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}