import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
  
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Profile'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,),
      body: Center(
        child: Image.asset('assets/icons/user-profile.png',width: 300,height: 300,)
        ),
      );
  }
}