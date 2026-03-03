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
      body: Center(
        child: Text(
          "PC Builder Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}