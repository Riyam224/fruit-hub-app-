// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:fruit/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.assetsImagesPlant),
        ],
      ),
      SvgPicture.asset(Assets.assetsImagesLogo),
      SvgPicture.asset(
        Assets.assetsImagesSplashBottom,
        fit: BoxFit.fill,
      ),
    ]);
  }
}
