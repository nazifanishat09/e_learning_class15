import 'package:flutter/material.dart';
import 'package:flutter_class15/src/app_data.dart';
import 'package:flutter_class15/src/page/widgets/customText.dart';

class IconContainerWideget extends StatelessWidget {
  const IconContainerWideget({
    super.key,
    this.bgColor,
    required this.icon,
    this.stack,
  });

  final Color? bgColor;
  final Widget icon;
  final Widget? stack;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: bgColor,

            borderRadius: BorderRadius.circular(30),
          ),
          child: icon,
        ),
        if (stack != null) Positioned(right: 2, child: stack!),
      ],
    );
  }
}
