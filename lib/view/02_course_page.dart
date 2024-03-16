import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/app_images/app_images.dart';
import 'package:machine_test/utils/constant.dart';
import 'package:machine_test/view_model/home_view_model.dart';
import 'package:machine_test/widgets/01_widgets.dart';
import 'package:machine_test/widgets/ww_custom_appBar.dart';
import 'package:machine_test/widgets/ww_our_programmer.dart';
import 'package:machine_test/widgets/ww_text.dart';
import 'package:svg_flutter/svg.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                sized0hx10,
                const CustomAppbar(),
                sized0hx40,
                const PersonDetail(),
                sized0hx20,
                const Options(),
                sized0hx20,
                Observer(builder: (_) {
                  return const SubjectsGrid();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  const Options({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: DecoratedBox(
      decoration: const BoxDecoration(
          color: cLightBlue,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(AppImages.img_live_class),
                const WWText(text: 'Live Class', textSize: TextSize.fw400px14)
              ],
            ),
            Column(
              children: [
                Image.asset(AppImages.img_bulb),
                const WWText(text: 'Practice', textSize: TextSize.fw400px14)
              ],
            ),
            Column(
              children: [
                Image.asset(AppImages.img_exame),
                const WWText(text: 'Exame', textSize: TextSize.fw400px14)
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class PersonDetail extends StatelessWidget {
  const PersonDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          // height: 160.h,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
                // border: Border.all(color: cRed),
                color: cWhite,
                borderRadius: BorderRadius.circular(27.r)),
            child: Row(
              children: [
                sized0wx20,
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sized0hx20,
                      const WWText(
                          text: 'Good Morning', textSize: TextSize.fw600px18),
                      const WWText(
                        text: 'John Doe 53',
                        textSize: TextSize.fw600px18,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: cLightBlue,
                              borderRadius: BorderRadius.circular(27.r)),
                          child: Row(
                            children: [
                              sized0wx20,
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 20),
                                child: WWText(
                                    text: 'Digital Marketing Certification',
                                    textSize: TextSize.fw400px12),
                              ),
                              const Spacer(),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    color: cBlue,
                                    borderRadius: BorderRadius.circular(27.r)),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: WWText(
                                      text: 'Change',
                                      textColor: cWhite,
                                      textSize: TextSize.fw400px12),
                                ),
                              ),
                              sized0wx10,
                              sized0wx10,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                sized0wx10,
                sized0wx10,
              ],
            ),
          ),
        ),
        Positioned(
          top: -35,
          right: 40,
          child: Image.asset(
            AppImages.img_person,
            height: 81.w,
            width: 81.w,
          ),
        ),
      ],
    );
  }
}

class SubjectsGrid extends StatelessWidget {
  const SubjectsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 30.0,
      ),
      itemCount: vmHome.coursesSuccRes.data?.data?.subjects?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        var data = vmHome.coursesSuccRes.data!.data!.subjects![index];
        return vmHome.coursesSuccRes.loading == true
            ? const Center(
                child: CupertinoActivityIndicator(
                radius: 50,
                color: cWhite,
              ))
            : WWOurProgrammer(dataSubject: data);
      },
    );
  }
}
