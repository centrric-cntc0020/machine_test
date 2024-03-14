import 'package:flutter/material.dart';
import 'package:machine_test/widgets/ww_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WWButton(
          text: 'Press',
          onTap: () {},
          buttonTypes: ButtonTypes.medium,
        ),
      ),
    );
  }
}
