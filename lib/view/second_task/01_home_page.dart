import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/model/home_model/top_course.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/app_images/app_images.dart';
import 'package:machine_test/utils/constant.dart';
import 'package:machine_test/view_model/home_view_model.dart';
import 'package:machine_test/widgets/01_widgets.dart';
import 'package:machine_test/widgets/ww_ad_banner.dart';
import 'package:machine_test/widgets/ww_custom_appBar.dart';
import 'package:machine_test/widgets/ww_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    vmHome.homeApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: const SingleChildScrollView(
            child: HomePageStateless(),
          ),
        ),
      ),
    );
  }
}

class HomePageStateless extends StatelessWidget {
  const HomePageStateless({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sized0hx10,
        const CustomAppbar(),
        sized0hx10,
        const WWadBanner(),
        sized0hx10,
        const WWText(
            text: 'Our Programmes',
            textSize: TextSize.fw600px24,
            textColor: cBlack),
        sized0hx10,
        const ProgrammesGrid(),
        sized0hx10,
        const Explore(),
        sized0hx30,
      ],
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 110.h,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
                border: Border.all(color: cRed),
                color: cWhite,
                borderRadius: BorderRadius.circular(27.r)),
            child: Row(
              children: [
                Opacity(opacity: 0, child: Image.asset(AppImages.img_book)),
                sized0wx10,
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WWText(text: 'Explore', textSize: TextSize.fw500px16),
                      WWText(
                        text: 'Monthly Current Affairs',
                        textColor: cRed,
                        textSize: TextSize.fw600px18,
                      )
                    ],
                  ),
                ),
                sized0wx10,
                SizedBox(
                    height: 38.w,
                    width: 38.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: wwShadowList(),
                          color: cWhite),
                      child: const Icon(
                        Icons.arrow_forward_sharp,
                        color: cPrimaryColor,
                      ),
                    )),
                sized0wx10,
              ],
            ),
          ),
        ),
        Positioned(
          top: -50,
          left: 10,
          child: Image.asset(
            AppImages.img_book,
            height: 108.w,
            width: 108.w,
          ),
        ),
      ],
    );
  }
}

class ProgrammesGrid extends StatelessWidget {
  const ProgrammesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .8,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: vmHome.homeSuccRes.data?.data?.topCourses?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          var data = vmHome.homeSuccRes.data!.data!.topCourses![index];
          return vmHome.homeSuccRes.loading == true
              ? const Center(
                  child: CupertinoActivityIndicator(
                  radius: 50,
                  color: cWhite,
                ))
              : WWOurProgrammer(data: data);
        },
      );
    });
  }
}

// ignore: camel_case_types
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
