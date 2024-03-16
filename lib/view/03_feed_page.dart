import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/app_images/app_images.dart';
import 'package:machine_test/utils/constant.dart';
import 'package:machine_test/view_model/home_view_model.dart';
import 'package:machine_test/widgets/ww_text.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SafeArea(
        child: Observer(builder: (_) {
          return ListView.separated(
              separatorBuilder: (context, index) => sized0hx10,
              itemCount: vmHome.feedSuccRes.data?.data?.length ?? 0,
              itemBuilder: (ctx, _) {
                var data = vmHome.feedSuccRes.data!.data![_];
                return Padding(
                  padding: const EdgeInsets.all(00),
                  child: ColoredBox(
                    color: cWhite,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: CachedNetworkImage(
                                  imageUrl: data.file ?? '')),
                          sized0hx05,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(CupertinoIcons.heart, color: cRed),
                              sized0wx05,
                              WWText(
                                  text: '${data.likeCount ?? '0'} Likes',
                                  textSize: TextSize.fw800px12),
                              const Spacer(),
                              Image.asset(
                                AppImages.img_whatsapp,
                                height: 30,
                                width: 30,
                              ),
                              sized0wx05,
                              const Icon(
                                CupertinoIcons.tag,
                                color: cBlue,
                              )
                            ],
                          ),
                          sized0hx05,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              WWText(
                                text: data.category ?? '',
                                textSize: TextSize.fw500px12,
                                textColor: cBlue,
                              ),
                              WWText(
                                  text: data.date ?? '',
                                  textColor: cDarkGrey,
                                  textSize: TextSize.fw400px14)
                            ],
                          ),
                          sized0hx05,
                          WWText(
                            text: data.title ?? '',
                            textSize: TextSize.fw800px16,
                            textColor: cBlack,
                          ),
                          sized0hx05,
                          Html(
                            data: data.content,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }
}
