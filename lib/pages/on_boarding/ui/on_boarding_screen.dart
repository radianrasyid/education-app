import 'package:educationapp/pages/on_boarding/components/on_boarding_screen_content.dart';
import 'package:educationapp/utils/color/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScrenState();
}

class _OnBoardingScrenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();
  int activeStep = 0;
  final List<Widget> onBoardingScreenContent = [
    const OnBoardingScreenContent(
      image: 'assets/img/onBoarding1.png',
      subtitle:
          "There are many fields that you can find here, and you can learn all of them",
      title: "Find a field that you like",
    ),
    const OnBoardingScreenContent(
      image: 'assets/img/onBoarding2.png',
      subtitle:
          "You can start your journey in the field you love, no need to be afraid of getting lost, we will help you reach the finish line",
      title: "Start your journey",
    ),
    const OnBoardingScreenContent(
      image: 'assets/img/onBoarding3.png',
      subtitle:
          "By learning & increasing knowledge you will become a wise person and can change things around you and even the world",
      title: "You can be anything, the world is in your hands",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage('assets/icon/circle1.png'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image(
                      image: AssetImage('assets/icon/circle2.png'),
                    ),
                  ),
                  Align(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width,
                      child: PageView.builder(
                        padEnds: true,
                        onPageChanged: (value) {
                          setState(() {
                            activeStep = value;
                          });
                        },
                        pageSnapping: true,
                        controller: pageController,
                        itemCount: onBoardingScreenContent.length,
                        itemBuilder: (context, index) {
                          return onBoardingScreenContent[index];
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50.h),
              child: SmoothPageIndicator(
                controller: pageController,
                count: onBoardingScreenContent.length,
                effect: const WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    type: WormType.normal,
                    dotColor: AppColor.dotInactive,
                    activeDotColor: AppColor.btnMain),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    activeStep == onBoardingScreenContent.length - 1
                        ? SizedBox()
                        : SizedBox(
                            width: 150.w,
                            child: ElevatedButton(
                              onPressed: () {
                                activeStep < onBoardingScreenContent.length - 1
                                    ? pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.bounceInOut)
                                    : Navigator.pushNamedAndRemoveUntil(
                                        context, '/signin', (route) => false);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 0,
                                  backgroundColor: AppColor.mainWhite),
                              child: Text(
                                'Skip',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.btnSecond),
                              ),
                            ),
                          ),
                    Container(
                      width: activeStep < onBoardingScreenContent.length - 1
                          ? 150.w
                          : 300.w,
                      height: 40.h,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(0, 5),
                            spreadRadius: 0.1,
                            color: AppColor.btnMain.withOpacity(0.3))
                      ]),
                      child: ElevatedButton(
                        onPressed: () {
                          activeStep < onBoardingScreenContent.length - 1
                              ? pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.bounceInOut)
                              : Navigator.pushNamedAndRemoveUntil(
                                  context, '/signin', (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 0,
                          shadowColor: AppColor.btnMain,
                          backgroundColor: AppColor.btnMain,
                          padding: EdgeInsets.zero,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 3),
                                child: Text(
                                  activeStep <
                                          onBoardingScreenContent.length - 1
                                      ? 'Next'
                                      : 'Start',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.mainWhite),
                                ),
                              ),
                              Icon(
                                activeStep < onBoardingScreenContent.length - 1
                                    ? Icons.arrow_right_outlined
                                    : null,
                                color: AppColor.mainWhite,
                                size: activeStep <
                                        onBoardingScreenContent.length - 1
                                    ? 24.w
                                    : 0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
