// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:fruit/constants.dart';
import 'package:fruit/core/utils/app_color.dart';
import 'package:fruit/core/widgets/custom_buttom.dart';
import 'package:fruit/features/auth/presentation/views/login_view.dart';

import 'on_boarding_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: CustomButtom(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                },
                text: 'start now'),
          ),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
