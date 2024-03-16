// ignore: camel_case_types
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/model/home_model/top_course.dart';
import 'package:machine_test/model/my_courses_model/subject.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/constant.dart';
import 'package:machine_test/widgets/ww_text.dart';

class WWOurProgrammer extends StatelessWidget {
  const WWOurProgrammer({
    super.key,
    this.data,
    this.dataSubject,
  });

  final TopCourse? data;
  final Subject? dataSubject;

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
              height: dataSubject != null ? 80.w : null,
              width: dataSubject != null ? 80.w : null,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      shape: dataSubject != null
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      borderRadius: dataSubject != null
                          ? null
                          : BorderRadius.circular(10.r)),
                  child: CachedNetworkImage(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      imageUrl: data?.thumbnail ?? dataSubject?.icon ?? ''),
                ),
              ),
            ),
            sized0hx05,
            Expanded(
              child: WWText(
                text: data?.title ?? dataSubject?.title ?? '',
                textSize: dataSubject != null
                    ? TextSize.fw500px12
                    : TextSize.fw500px16,
                maxLines: dataSubject != null ? 1 : 2,
                textColor: cBlack,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            sized0hx05,
          ],
        ),
      ),
    );
  }
}
