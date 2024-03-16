import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/utils/app_images/app_images.dart';
import 'package:machine_test/view/second_task/01_home_page.dart';
import 'package:machine_test/view/second_task/02_course_page.dart';
import 'package:svg_flutter/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomePage(),
    const CoursePage(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex == 0) return true;

        setState(() {
          _currentIndex = 0;
        });

        return false;
      },
      child: Scaffold(
        body: PageTransitionAnimation(currentIndex: _currentIndex, tabs: _tabs),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: cBlack,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.svg_home,
                color: _currentIndex == 0 ? cBlue : cLightGrey,
              ),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.svg_my_courses,
                color: _currentIndex == 1 ? cBlue : cLightGrey,
              ),
              label: 'My Courses',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.svg_feed,
                color: _currentIndex == 2 ? cBlue : cLightGrey,
              ),
              label: 'Feed',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: 'Profile',
            // ),
          ],
        ),
      ),
    );
  }
}

class PageTransitionAnimation extends StatelessWidget {
  const PageTransitionAnimation({
    super.key,
    required int currentIndex,
    required List<Widget> tabs,
  })  : _currentIndex = currentIndex,
        _tabs = tabs;

  final int _currentIndex;
  final List<Widget> _tabs;

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      duration: const Duration(milliseconds: 300),
      reverse: _currentIndex == 0,
      transitionBuilder: (
        Widget child,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: _currentIndex == 1
              ? SharedAxisTransitionType.scaled
              : SharedAxisTransitionType.horizontal,
          child: child,
        );
      },
      child: _tabs[_currentIndex], //_buildPage(_currentIndex),
    );
  }
}
