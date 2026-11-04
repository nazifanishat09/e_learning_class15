import 'package:flutter/material.dart';
import 'package:flutter_class15/src/app_data.dart';

class IconContainerWideget extends StatelessWidget {
  const IconContainerWideget({super.key, this.bgColor, required this.icon});

  final Color? bgColor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: bgColor,

        borderRadius: BorderRadius.circular(30),
      ),
      child: icon,
    );
  }
}
