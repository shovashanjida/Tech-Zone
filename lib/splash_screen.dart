import 'package:flutter/material.dart';
import 'package:tech_zone_ui/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(
            begin: 0,
            end: 1,
          ),
          duration: Duration(seconds: 2),

          onEnd: (){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const WelcomePage())
            );
          },

          builder: (BuildContext context, double _val, Widget? child) {
            return Opacity(
              opacity: _val,
              child: child,
            );
          },
          child: Image.asset(
            'assets/splash.png',
            height: 200,
          ),
        ),
      ),
    );
  }
}