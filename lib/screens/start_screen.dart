import 'package:fishing_app/screens/fishing_log.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD4D7B7),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/img/app_logo.png"),
            SizedBox(height: 140),
            ElevatedButton(onPressed: () {Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const FishingLog()),
            );}, child: Text("Start Fishing")),
          ],
        ),
      ),
    );
  }
}
