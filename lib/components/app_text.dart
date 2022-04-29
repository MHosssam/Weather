import 'package:flutter/material.dart';

class AppText extends Text {
  AppText({
    Key? key,
    required String? text,
    TextStyle? style,
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    double? height,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    TextDecoration? decoration,
    String? fontFamily,
  }) : super(
          text ?? '',
          key: key,
          overflow: textOverflow,
          style: style ??
              TextStyle(
                color: color,
                decoration: decoration,
                fontWeight: fontWeight,
                fontSize: fontSize,
                height: height,
                fontFamily: fontFamily,
              ),
          textAlign: textAlign ?? TextAlign.center,
          maxLines: maxLines,
        );
}
