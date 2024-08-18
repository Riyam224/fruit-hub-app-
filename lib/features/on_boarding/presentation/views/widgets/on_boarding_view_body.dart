// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:fruit/constants.dart';
import 'package:fruit/core/utils/app_color.dart';
import 'package:fruit/core/widgets/custom_buttom.dart';

import 'on_boarding_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(
          height: 29,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: CustomButtom(onPressed: () {}, text: 'start now'),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
