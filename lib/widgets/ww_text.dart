import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

enum TextSize {
  fw800px30,
  fw800px20,
  fw800px16,
  fw800px12,
  fw700px18,
  fw700px14,
  fw700px10,
  fw600px12,
  fw600px14,
  fw600px18,
  fw600px22,
  fw600px24,
  fw500px16,
  fw500px12,
  fw500px13,
  fw500px10,
  fw400px12,
  fw400px14,
  fw300px18,
  fw300px13,
}

class WWText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextSize textSize;
  final Color? textColor;
  final TextDecoration textDecoration;
  final double? height;
  const WWText(
      {super.key,
      required this.text,
      this.textAlign,
      this.maxLines,
      this.overflow,
      required this.textSize,
      this.textColor = Colors.black,
      this.textDecoration = TextDecoration.none,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,

      style: customStyle(textSize).copyWith(
          color: textColor, decoration: textDecoration, height: height),
      // style: style ??
      //     Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16.sp),
    );
  }

  TextStyle customStyle(TextSize textSize) {
    switch (textSize) {
      case TextSize.fw800px30:
        return GoogleFonts.poppins(
            fontSize: 30.sp, fontWeight: FontWeight.w800);

      case TextSize.fw800px20:
        return GoogleFonts.poppins(
            fontSize: 20.sp, fontWeight: FontWeight.w800);

      case TextSize.fw800px16:
        return GoogleFonts.poppins(
            fontSize: 16.sp, fontWeight: FontWeight.w800);

      case TextSize.fw800px12:
        return GoogleFonts.poppins(
            fontSize: 12.sp, fontWeight: FontWeight.w800);

      case TextSize.fw700px18:
        return GoogleFonts.poppins(
            fontSize: 18.sp, fontWeight: FontWeight.w700);

      case TextSize.fw700px14:
        return GoogleFonts.poppins(
            fontSize: 14.sp, fontWeight: FontWeight.w700);

      case TextSize.fw700px10:
        return GoogleFonts.poppins(
            fontSize: 10.sp, fontWeight: FontWeight.w700);

      case TextSize.fw600px12:
        return GoogleFonts.poppins(
            fontSize: 12.sp, fontWeight: FontWeight.w600);

      case TextSize.fw600px14:
        return GoogleFonts.poppins(
            fontSize: 14.sp, fontWeight: FontWeight.w600);

      case TextSize.fw600px18:
        return GoogleFonts.poppins(
            fontSize: 18.sp, fontWeight: FontWeight.w600);

      case TextSize.fw600px22:
        return GoogleFonts.poppins(
            fontSize: 22.sp, fontWeight: FontWeight.w600);

      case TextSize.fw600px24:
        return GoogleFonts.poppins(
            fontSize: 24.sp, fontWeight: FontWeight.w600);

      case TextSize.fw500px16:
        return GoogleFonts.poppins(
            fontSize: 16.sp, fontWeight: FontWeight.w500);

      case TextSize.fw500px12:
        return TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500);

      case TextSize.fw500px13:
        return GoogleFonts.poppins(
            fontSize: 13.sp, fontWeight: FontWeight.w500);

      case TextSize.fw500px10:
        return GoogleFonts.poppins(
            fontSize: 10.sp, fontWeight: FontWeight.w500);

      case TextSize.fw400px12:
        return GoogleFonts.poppins(
            fontSize: 12.sp, fontWeight: FontWeight.w400);

      case TextSize.fw400px14:
        return GoogleFonts.poppins(
            fontSize: 14.sp, fontWeight: FontWeight.w400);

      case TextSize.fw300px18:
        return GoogleFonts.poppins(
            fontSize: 18.sp, fontWeight: FontWeight.w300);

      case TextSize.fw300px13:
        return GoogleFonts.poppins(
            fontSize: 13.sp, fontWeight: FontWeight.w300);

      default:
        return GoogleFonts.poppins(
            fontSize: 12.sp, fontWeight: FontWeight.w400);
    }
  }
}
