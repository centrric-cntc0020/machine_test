import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/utils/app_theme.dart';
import 'package:machine_test/utils/injection/injection.dart';
import 'package:machine_test/utils/services/secure_storage.dart';
import 'package:machine_test/view/first_task/home_screen.dart';
import 'package:machine_test/view/second_task/00_main_screen.dart';
import 'package:machine_test/view/second_task/01_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependancies();
  await SharedStorage().initShared();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: false,
        designSize: const Size(376, 814),
        builder: (context, snapshot) {
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const MainScreen());
        });
  }
}
