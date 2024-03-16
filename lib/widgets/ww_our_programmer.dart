// ignore: camel_case_types
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/model/home_model/top_course.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/constant.dart';
import 'package:machine_test/widgets/ww_text.dart';

class WWOurProgrammer extends StatelessWidget {
  const WWOurProgrammer({
    super.key,
    required this.data,
  });

  final TopCourse data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) =>
        //           MovieDetailPage(data: data)),
        // );

        // vmHome.castAllApi(data.id!);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            // boxShadow: wwShadowList(),
            // color: cWhite,
            borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 125.h,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
                  child: CachedNetworkImage(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      imageUrl: data.thumbnail ?? ''),
                ),
              ),
            ),
            sized0hx05,
            WWText(
              text: data.title ?? '',
              textSize: TextSize.fw500px16,
              maxLines: 2,
              textColor: cBlack,
            ),
            sized0hx05,
          ],
        ),
      ),
    );
  }
}
