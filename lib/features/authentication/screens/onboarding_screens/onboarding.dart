import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do/features/authentication/screens/onboarding_screens/widgets/onboarding_dot_navigation.dart';
import 'package:to_do/features/authentication/screens/onboarding_screens/widgets/onboarding_next_button.dart';
import 'package:to_do/features/authentication/screens/onboarding_screens/widgets/onboarding_page.dart';
import 'package:to_do/features/authentication/screens/onboarding_screens/widgets/onboarding_skip.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: ToDoImages.onboardingScreen1,
                  title: ToDoTexts.onBoardingTitle1,
                  subtitle: ToDoTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: ToDoImages.onboardingScreen2,
                  title: ToDoTexts.onBoardingTitle2,
                  subtitle: ToDoTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: ToDoImages.onboardingScreen3,
                  title: ToDoTexts.onBoardingTitle3,
                  subtitle: ToDoTexts.onBoardingSubTitle3),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation Smooth Page Indicator
          const OnBoardingDotNavigation(),

          const OnBoardingNextBottom()
        ],
      ),
    );
  }
}
