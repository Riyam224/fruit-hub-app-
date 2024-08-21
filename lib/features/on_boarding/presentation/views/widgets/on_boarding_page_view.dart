// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit/core/utils/app_color.dart';
import 'package:fruit/core/utils/app_images.dart';
import 'package:fruit/core/utils/app_text_styles.dart';
import 'package:fruit/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.assetsImagesPageViewItem1Image,
          backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyles.bold23,
              ),
              Text(
                ' HUB',
                style:
                    TextStyles.bold23.copyWith(color: AppColors.secondaryColor),
              ),
              Text(
                'Fruit',
                style:
                    TextStyles.bold23.copyWith(color: AppColors.primaryColor),
              ),
            ],
          ),
        ),
        // todo

        PageViewItem(
          isVisible: false,
          image: Assets.assetsImagesPageViewItem2Image,
          backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: const Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
