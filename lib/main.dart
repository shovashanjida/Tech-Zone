import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tech_zone_ui/firebase_options.dart';
import 'package:tech_zone_ui/splash_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey)
      ),
      home: SplashScreen(),
    );
  }
}
