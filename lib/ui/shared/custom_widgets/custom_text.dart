import 'package:alkaramah/ui/shared/colors.dart';
import 'package:flutter/material.dart';

enum TextStyleType {
  TITLE,
  SUBTITLE,
  BODY,
  SMALL,
  CUSTOM,
}

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyleType? styleType;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? fontSize;

  const CustomText({
    super.key,
    this.text,
    this.styleType = TextStyleType.BODY,
    this.textColor = AppColors.blackColor,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Text(
        text!,
        textAlign: textAlign ?? TextAlign.start,
        style: getStyle(size),
      ),
    );
  }

  TextStyle getStyle(Size size) {
    TextStyle result = TextStyle();

    switch (styleType) {
      case TextStyleType.TITLE:
        result = TextStyle(
            fontSize: size.width / 21,
            fontWeight: fontWeight ?? FontWeight.bold,
            color: textColor);
        break;
      case TextStyleType.SUBTITLE:
        result = TextStyle(
            fontSize: size.width / 25,
            fontWeight: fontWeight,
            color: textColor);
        break;
      case TextStyleType.BODY:
        result = TextStyle(
          fontSize: size.width / 28,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;
      case TextStyleType.SMALL:
        result = TextStyle(
            fontSize: size.width / 30,
            fontWeight: fontWeight,
            color: textColor);
        break;
      case TextStyleType.CUSTOM:
        result = TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        );
        break;

      default:
        result = TextStyle(
            fontSize: size.width / 24,
            fontWeight: FontWeight.normal,
            color: textColor);
        break;
    }

    return result;
  }
}
