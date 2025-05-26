import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolist_app/ui/onboarding/OnBoardingPage_View.dart';
import 'package:todolist_app/ui/welcome/welcome_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> _checkAppState(BuildContext context) async {
    // Kiem tra xem co kOnboardingCompleted
    final isCompleted = await _isOnboardingCompleted();
    if(isCompleted){
      // Di chuyen den man hinh Context
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> WelcomePage(isFirstTimeInstallApp : false)));
    }
    else{
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> OnboardingpageView()));
    }
  }

  Future<bool> _isOnboardingCompleted() async{
    try{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final result = prefs.getBool("kOnboardingCompleted");
      return result ?? false;
    }catch(e){
      return false;
    }
  }
  @override
  Widget build(BuildContext context) {
    _checkAppState(context);
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
