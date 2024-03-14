import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/constant.dart';
import 'package:machine_test/view_model/home_view_model.dart';
import 'package:machine_test/widgets/01_widgets.dart';
import 'package:machine_test/widgets/ww_text.dart';
import 'package:flutter_mobx/src/observer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    vmHome.tvShowAllApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const WWText(text: 'Shows', textSize: TextSize.fw800px20),
      ),
      body: Center(child: Observer(builder: (context) {
        return Padding(
          padding: EdgeInsets.all(15.r),
          child: const HomeScreenStateless(),
        );
      })),
    );
  }
}

class HomeScreenStateless extends StatelessWidget {
  const HomeScreenStateless({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: vmHome.tvShowAllSuccRes.data?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        var data = vmHome.tvShowAllSuccRes.data![index];
        return vmHome.tvShowAllSuccRes.loading == true
            ? const Center(child: CupertinoActivityIndicator())
            : DecoratedBox(
                decoration: BoxDecoration(
                    boxShadow: wwShadowList(),
                    color: cWhite,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r)),
                          child: CachedNetworkImage(
                              width: double.infinity,
                              fit: BoxFit.cover,
                              imageUrl: data.image?.medium ?? ''),
                        ),
                      ),
                    ),
                    sized0hx05,
                    WWText(text: data.name ?? '', textSize: TextSize.fw600px14),
                    sized0hx05,
                  ],
                ),
              );
      },
    );
  }
}
