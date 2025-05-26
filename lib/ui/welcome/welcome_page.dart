import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  const WelcomePage({super.key, required this.isFirstTimeInstallApp});
  final bool isFirstTimeInstallApp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: isFirstTimeInstallApp ? IconButton(
            onPressed: () {
              if(Navigator.canPop(context)){
              Navigator.pop(context);
              };
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
              color: Colors.white,
            ),
        ) : null,
      ),
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: Column(
          children: [
            _buildTitleAndDes(),
            const Spacer(),
            _buildButtonLogin(),
            _buildButtonRegister()
          ],
        ),
      ),
    );
  }

  Widget _buildTitleAndDes() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 38),
      padding: EdgeInsets.only(top: 58),
      child: Column(
        children: [
          Text(
            "Welcome to Uptodo",
            style: TextStyle(
              fontSize: 32,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.87),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Text(
            "Please login to your account or create new account to continue",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.44),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildButtonLogin() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(bottom: 28),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
          child: Text("Login",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400,
                  color: Colors.white))),
    );
  }

  Widget _buildButtonRegister() {
    return Container(
      width: double.infinity,
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(bottom: 28),
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              side: BorderSide(
                width: 1,
                color: Color(0xFF8875FF),
              )),
          child: Text("Login",
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400,
                  color: Colors.white))),
    );
  }
}
