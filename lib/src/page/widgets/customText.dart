import 'package:flutter/material.dart';

class CustomTextWidgets extends StatelessWidget {
  const CustomTextWidgets({
    super.key,
    required this.title,
    this.fontSize,
    this.fontWeigth,
    this.fontColor,
    this.maxline,
  });
  final String title;
  final double? fontSize;
  final FontWeight? fontWeigth;
  final Color? fontColor;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeigth,
        color: fontColor,
      ),
    );
  }
}
