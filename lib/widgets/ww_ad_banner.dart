import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/app_images/app_images.dart';
import 'package:machine_test/view_model/home_view_model.dart';

List<String> listOfPoster = [
  AppImages.caroselImage,
  AppImages.caroselImage,
  AppImages.caroselImage,
  AppImages.caroselImage,
  AppImages.caroselImage,
];

class WWadBanner extends StatelessWidget {
  const WWadBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      width: ScreenUtil().screenWidth,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: ScreenUtil().screenWidth,
            child: CarouselSlider.builder(
                itemCount: listOfPoster.length,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6),
                  viewportFraction: 1,
                ),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  vmHome.caroselDotsUpdateFun(itemIndex);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 05),
                    child: Image.asset(
                      listOfPoster[itemIndex],
                      fit: BoxFit.fitWidth,
                      width: ScreenUtil().screenWidth,
                    ),
                  );
                }),
          ),
          Observer(builder: (_) {
            return Positioned(
              bottom: 15,
              child: Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: vmHome.caroselItemIndex == i
                                  ? cPrimaryColor
                                  : cWhite)),
                    ),
                ],
              ),
            );
          }),
        ],
      ),
    );

    //  CarouselSlider(
    //   options: CarouselOptions(
    //     autoPlay: true,
    //     autoPlayInterval: const Duration(seconds: 6),
    //     viewportFraction: 1,
    //   ),
    //   items: [
    //     AppImages.imgPoster1,
    //     AppImages.imgPoster1,
    //     AppImages.imgPoster1,
    //     AppImages.imgPoster1,
    //     AppImages.imgPoster1
    //   ].map((i) {
    //     return Builder(

    //       builder: (BuildContext context) {
    //         return Image.asset(i);
    //       },
    //     );
    //   }).toList(),
    // );
  }
}
