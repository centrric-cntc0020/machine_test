import 'package:flutter/material.dart';
import 'package:machine_test/utils/app_images/app_images.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(AppImages.svg_menu),
        SvgPicture.asset(AppImages.svg_notification),
      ],
    );
  }
}
