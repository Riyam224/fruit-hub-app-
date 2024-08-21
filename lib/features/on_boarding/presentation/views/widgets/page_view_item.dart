// ignore_for_file: depend_on_referenced_packages, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit/constants.dart';

import 'package:fruit/core/services/shared_preferences_singleton.dart';
import 'package:fruit/core/utils/app_images.dart';
import 'package:fruit/core/utils/app_text_styles.dart';
import 'package:fruit/features/auth/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  Assets.assetsImagesPageViewItem1BackgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  Assets.assetsImagesPageViewItem1Image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        // todo

                        Prefs.setBool(kIsOnBoardingViewSeen, true);

                        Navigator.pushReplacementNamed(
                            context, LoginView.routeName);
                      },
                      child: Text(
                        'تخط',
                        style: TextStyles.regular13.copyWith(
                          color: Color.fromARGB(255, 123, 108, 108),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        // todo
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 57.0,
          ),
          child: Text(
            subtitle,
            style: TextStyles.semiBold16.copyWith(
              color: const Color.fromARGB(255, 43, 35, 35),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
