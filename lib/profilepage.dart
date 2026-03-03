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
      body: Align(
        alignment: AlignmentGeometry.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black87,
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )
                  ),
                  onPressed: (){},
                  child: Column(
                    children: [
                      Icon(Icons.logout,size: 20,),
                      Text('Log Out'),
                    ],
                  )
              ),
            )
          ],
        ),
      ),
      );
  }
}