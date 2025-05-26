import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF121212),
        body: SafeArea(
            child: Center(
              child: _buildBodyPage()
            )));
  }
  Widget _buildBodyPage(){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/splash_icon.png",
          width: 95,
          height: 80,
          fit: BoxFit.contain,),
      ],
    );
  }
}
