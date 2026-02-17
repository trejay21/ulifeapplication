import 'dart:io';

import 'package:fl_audio_book/localization/localization_const.dart';
import 'package:fl_audio_book/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  DateTime? backPressTime;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pageModelList = <Widget>[
      Padding(
        padding: const EdgeInsets.all(fixPadding * 2),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  "assets/onboarding/onboarding1.png",
                  height: size.height * 0.35,
                  width: size.height * 0.35,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Text(getTranslate(context, 'onboarding.welcome_story'),
                  style: bold24White, textAlign: TextAlign.start),
              heightSpace,
              const Text(
                "Lorem ipsum dolor sit amet, consectetur tadipiscing elit. Congue aliquet commodoipsum condimentum. Non risus diam ac massa. Odio odio integer faucibus ",
                style: regular16FA,
                textAlign: TextAlign.start,
              ),
              heightSpace,
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(fixPadding * 2),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  "assets/onboarding/onboarding2.png",
                  height: size.height * 0.35,
                  width: size.height * 0.35,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Text(
                getTranslate(context, 'onboarding.listen_book'),
                style: bold24White,
                textAlign: TextAlign.start,
              ),
              heightSpace,
              const Text(
                "Lorem ipsum dolor sit amet, consectetur tadipiscing elit. Congue aliquet commodoipsum condimentum. Non risus diam ac massa. Odio odio integer faucibus ",
                style: regular16FA,
                textAlign: TextAlign.start,
              ),
              heightSpace,
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(fixPadding * 2),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  "assets/onboarding/onboarding3.png",
                  height: size.height * 0.35,
                  width: size.height * 0.35,
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Text(
                getTranslate(context, 'onboarding.easy_Explore'),
                style: bold24White,
                textAlign: TextAlign.start,
              ),
              heightSpace,
              const Text(
                "Lorem ipsum dolor sit amet, consectetur tadipiscing elit. Congue aliquet commodoipsum condimentum. Non risus diam ac massa. Odio odio integer faucibus ",
                style: regular16FA,
                textAlign: TextAlign.start,
              ),
              heightSpace,
            ],
          ),
        ),
      ),
    ];

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        bool backStatus = onWillPop();
        if (backStatus) {
          exit(0);
        }
      },
      child: Scaffold(
        backgroundColor: primaryColor,
        resizeToAvoidBottomInset: false,
        body: Onboarding(
          startIndex: currentPage,
          onPageChanges:
              (netDragDistance, pagesLength, currentIndex, slideDirection) {
            setState(() {
              currentPage = currentIndex;
            });
          },
          swipeableBody: pageModelList,
          buildFooter: (context, netDragDistance, pagesLength, currentIndex,
              setIndex, slideDirection) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentPage != pagesLength - 1
                      ? TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            getTranslate(context, 'onboarding.skip'),
                            style: bold16White,
                          ),
                        )
                      : TextButton(
                          onPressed: null,
                          child: Text(
                            getTranslate(context, 'onboarding.skip'),
                            style: bold16White.copyWith(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                  Row(
                    children: List.generate(
                      pagesLength,
                      (index) => buildDots(index),
                    ),
                  ),
                  currentPage != pagesLength - 1
                      ? TextButton(
                          onPressed: () {
                            setState(() {
                              currentPage++;
                            });
                          },
                          child: Text(
                            getTranslate(context, 'onboarding.next'),
                            style: bold16White,
                          ),
                        )
                      : TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            getTranslate(context, 'onboarding.login'),
                            style: bold16White,
                          ),
                        ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  buildDots(int index) {
    return Container(
      height: 8,
      width: currentPage == index ? 30 : 8,
      margin: const EdgeInsets.symmetric(horizontal: fixPadding / 2.5),
      decoration: BoxDecoration(
        color: currentPage == index
            ? whiteColor
            : const Color(0xFFF2F2F2).withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  onWillPop() {
    DateTime now = DateTime.now();

    if (backPressTime == null ||
        now.difference(backPressTime!) >= const Duration(seconds: 2)) {
      backPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: blackColor,
          content: Text(
            getTranslate(context, 'exit_app.app_exit'),
            style: const TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(milliseconds: 1500),
        ),
      );
      return false;
    } else {
      return true;
    }
  }
}
