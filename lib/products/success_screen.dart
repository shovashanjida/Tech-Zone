import 'package:flutter/material.dart';
import 'package:tech_zone_ui/mainscreen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Success")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 80,
            ),

            const SizedBox(height: 20),

            const Text(
              "Order Successful!",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 30),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 12,
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                      (route) => false,
                );
              },
              child: const Text(
                "DONE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}