import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test/utils/app_colors.dart';
import 'package:machine_test/widgets/ww_text.dart';

enum ButtonTypes { small, mediumSmall, medium, large }

class WWButton extends StatelessWidget {
  final bool loading;
  final double? buttonHeight;
  final double? buttonWidth;
  final String text;
  final Color? buttonColor;
  final VoidCallback onTap;
  final Color? textColor;
  final double? buttonPadding;
  final FontWeight? textFontWeight;
  final double? textFontSize;
  final ButtonTypes buttonTypes;
  final TextSize? textSize;
  const WWButton({
    super.key,
    this.buttonHeight,
    this.buttonWidth,
    required this.text,
    this.buttonColor,
    required this.onTap,
    this.textFontSize,
    this.buttonPadding,
    this.textColor = Colors.white,
    this.textFontWeight,
    this.loading = false,
    required this.buttonTypes,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loading ? null : onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        height: buttonTypes == ButtonTypes.small ? 31.h : buttonHeight ?? 45.h,
        width: buttonWidth ??
            (buttonTypes == ButtonTypes.large ? double.infinity : buttonWidth),
        decoration: BoxDecoration(
          color: buttonColor ??
              (buttonTypes == ButtonTypes.small ? cGreen : cPrimaryColor),
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: loading
            ? const CircularProgressIndicator(color: cWhite)
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: FittedBox(
                  child: WWText(
                    textAlign: TextAlign.center,
                    textColor: textColor,
                    maxLines: 1,
                    text: text,
                    textSize: textSize ??
                        (buttonTypes == ButtonTypes.small
                            ? TextSize.fw500px13
                            : TextSize.fw800px16),
                  ),
                ),
              ),
      ),
    );
  }
}
