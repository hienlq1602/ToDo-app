// Giao dien man hinh

import 'package:flutter/material.dart';

import '../../until/enums/onBoarding_page_position.dart';

class OnboardingChildPage extends StatelessWidget {
  final OnBoardingPagePosition onboardingPagePosition;
  final VoidCallback nextOnPressed;
  final VoidCallback backOnPressed;
  final VoidCallback skipOnPressed;

  const OnboardingChildPage({super.key, required this.onboardingPagePosition, required this.nextOnPressed, required this.backOnPressed, required this.skipOnPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildSkipButton(),
              _buildOnBoardingImage(),
              _buildOnBoadringPageControl(),
              _buildOnBoardingTitleContent(),
              _buildOnBoardingNextAndPrevieButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOnBoardingNextAndPrevieButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24).copyWith(top: 107),
      child: Row(
        children: [
          TextButton(
              onPressed: () {
                backOnPressed.call();
              },
              child: Text(
                "BACK",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.44),
                ),
              )),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                nextOnPressed.call();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8875FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
              child: Text(
                  onboardingPagePosition == OnBoardingPagePosition.page3
                      ? "Get start"
                      : "NEXT",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w400,
                      color: Colors.white)))
        ],
      ),
    );
  }

  Widget _buildOnBoardingTitleContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            onboardingPagePosition.onboardingPageTitle(),
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white.withOpacity(0.87),
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: "lato"),
          ),
          SizedBox(height: 42),
          Text(onboardingPagePosition.onboardingPageContent(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 16,
                  fontFamily: "lato"))
        ],
      ),
    );
  }

  Widget _buildOnBoadringPageControl() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: onboardingPagePosition == OnBoardingPagePosition.page1
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: onboardingPagePosition == OnBoardingPagePosition.page2
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          SizedBox(width: 8),
          Container(
            height: 4,
            width: 26,
            decoration: BoxDecoration(
              color: onboardingPagePosition == OnBoardingPagePosition.page3
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnBoardingImage() {
    return Center(
      child: Image.asset(
        onboardingPagePosition.onboardingPageImage(),
        height: 296,
        width: 271,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildSkipButton() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      alignment: AlignmentDirectional.topStart,
      child: TextButton(
          onPressed: () {
            skipOnPressed.call();
          },
          child: Text(
            "SKIP",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.44),
            ),
          )),
    );
  }
}
