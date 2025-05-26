enum OnBoardingPagePosition{
  page1,
  page2,
  page3
}

extension OnBoardingPagePositionExtension on OnBoardingPagePosition {
   // Tra ve image cho 3 page
  String onboardingPageImage(){
    switch(this){
      case OnBoardingPagePosition.page1:
        return "assets/images/onboarding_1.png";
      case OnBoardingPagePosition.page2:
        return "assets/images/onBoarding2.png";
      case OnBoardingPagePosition.page3:
        return "assets/images/onBoarding3.png";
    }
  }

  String onboardingPageTitle(){
    switch(this){
      case OnBoardingPagePosition.page1:
        return "Manage your tasks";
      case OnBoardingPagePosition.page2:
        return "Create daily routine";
      case OnBoardingPagePosition.page3:
        return "Orgonaize your tasks";
    }
  }

  String onboardingPageContent(){
    switch(this){
      case OnBoardingPagePosition.page3:
        return "In Uptodo  you can create your personalized routine to stay productive";
      case OnBoardingPagePosition.page2:
        return "You can organize your daily tasks by adding your tasks into separate categories";
      case OnBoardingPagePosition.page1:
        return "You can easily manage all of your daily tasks in DoMe for free";
    }
  }
}