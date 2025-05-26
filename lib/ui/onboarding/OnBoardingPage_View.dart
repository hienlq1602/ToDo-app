// Class cha : Quan ly cac page con di chuyen qua lai giua cac page con
import 'package:flutter/material.dart';
import 'package:todolist_app/ui/onboarding/OnBoarding_Child_Page.dart';
import 'package:todolist_app/ui/welcome/welcome_page.dart';
import 'package:todolist_app/until/enums/onBoarding_page_position.dart';

class OnboardingpageView extends StatefulWidget {
  const OnboardingpageView({super.key});

  @override
  State<OnboardingpageView> createState() => _OnboardingpageViewState();
}

class _OnboardingpageViewState extends State<OnboardingpageView> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          physics: PageScrollPhysics(),
          children: <Widget> [
           OnboardingChildPage(
             onboardingPagePosition: OnBoardingPagePosition.page1,
             nextOnPressed: (){
               _pageController.jumpToPage(1);
             },
             backOnPressed: (){
             },
             skipOnPressed: (){
               _goToWelcomePage();
             },
           ),
           OnboardingChildPage(
               onboardingPagePosition: OnBoardingPagePosition.page2,
             nextOnPressed: (){
               _pageController.jumpToPage(2);
             },
             backOnPressed: (){
               _pageController.jumpToPage(0);
             },
             skipOnPressed: (){
               _goToWelcomePage();
             },
           ),
           OnboardingChildPage(
               onboardingPagePosition: OnBoardingPagePosition.page3,
             nextOnPressed: (){
               _goToWelcomePage();
             },
             backOnPressed: (){
               _pageController.jumpToPage(1);
             },
             skipOnPressed: (){
               _goToWelcomePage();
             },
           ),
          ],
        ),
    );
  }
  void _goToWelcomePage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }
}
