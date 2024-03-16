import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/model/home_model/ad_banner.dart';
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
  final List<AdBanner>? images;
  const WWadBanner({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: ScreenUtil().screenWidth,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: ScreenUtil().screenWidth,
            child: CarouselSlider.builder(
                itemCount: images?.length ?? 0,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6),
                  viewportFraction: 1,
                ),
                itemBuilder:
                    (BuildContext context, int? itemIndex, int pageViewIndex) {
                  vmHome.caroselDotsUpdateFun(itemIndex ?? 0);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 05),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: CachedNetworkImage(
                        imageUrl: images![itemIndex ?? 0].image ?? '',
                        fit: BoxFit.fitHeight,
                        width: ScreenUtil().screenWidth,
                      ),
                    ),
                  );
                }),
          ),
          Observer(builder: (_) {
            return Positioned(
              bottom: 15,
              child: Row(
                children: [
                  for (int i = 0; i < (images?.length ?? 0); i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: vmHome.caroselItemIndex == i
                                  ? cPrimaryColor
                                  : cBlack)),
                    ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
