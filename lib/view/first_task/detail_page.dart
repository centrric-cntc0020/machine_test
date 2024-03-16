import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/model/show_model/show_model.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/constant.dart';
import 'package:machine_test/view_model/home_view_model.dart';
import 'package:machine_test/widgets/ww_text.dart';

class MovieDetailPage extends StatelessWidget {
  final ShowModel data;
  const MovieDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBlack,
      appBar: AppBar(
        backgroundColor: cBlack,
        foregroundColor: cWhite,
        title: const WWText(
          text: 'Details',
          textSize: TextSize.fw800px20,
          textColor: cWhite,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
                width: double.infinity,
                fit: BoxFit.fitWidth,
                height: 150.w,
                imageUrl: data.image?.original ?? ''),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sized0hx10,
                  WWText(text: data.name ?? '', textSize: TextSize.fw600px22),
                  sized0hx10,
                  Row(
                    children: [
                      const Icon(Icons.star, color: cPrimaryColor),
                      sized0wx05,
                      WWText(
                          text: data.rating?.average?.toString() ?? '',
                          textSize: TextSize.fw600px14),
                      sized0wx10,
                      for (int i = 0; i < (data.genres?.length ?? 0); i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.r)),
                                border: Border.all(color: cWhite)),
                            child: Padding(
                              padding: EdgeInsets.all(3.r),
                              child: WWText(
                                  text: data.genres?[i].toString() ?? '',
                                  textSize: TextSize.fw600px14),
                            ),
                          ),
                        ),
                    ],
                  ),
                  sized0hx10,
                  const WWText(text: 'Summary', textSize: TextSize.fw700px18),
                  sized0hx10,
                  WWText(
                      text: data.summary ?? '', textSize: TextSize.fw600px14),
                  sized0hx10,
                  const WWText(text: 'Cast', textSize: TextSize.fw700px18),
                  sized0hx10,
                  Observer(builder: (_) {
                    return Row(
                      children: [
                        for (int i = 0; i < (data.genres?.length ?? 0); i++)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: 30.r,
                              backgroundImage: CachedNetworkImageProvider(vmHome
                                      .castSuccRes
                                      .data![i]
                                      .person
                                      ?.image
                                      ?.medium ??
                                  ''),
                            ),
                          ),
                      ],
                    );
                  }),
                  sized0hx30,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
