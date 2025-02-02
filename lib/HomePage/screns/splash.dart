import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image/logo.png",
            fit: BoxFit.cover,
          ),SizedBox(height: 150,),
          Image.asset("assets/image/image_1.png")
        ],
      ),
    );
  }
}
