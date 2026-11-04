import 'package:flutter/material.dart';
import 'package:flutter_class15/src/app_data.dart';
import 'package:flutter_class15/src/page/widgets/customText.dart';
import 'package:flutter_class15/src/page/widgets/iconContainer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                spacing: 10,
                children: [
                  IconContainerWideget(
                    bgColor: color_bg,
                    icon: Icon(Icons.sort),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidgets(
                        title: 'DELIVER TO',
                        fontColor: primary_color,
                        fontWeigth: FontWeight.w500,
                      ),
                      Row(
                        children: [
                          CustomTextWidgets(
                            title: 'Hala Lab office',
                            fontColor: color_grey,
                            fontWeigth: FontWeight.w500,
                          ),
                          Icon(Icons.arrow_drop_down, color: color_grey),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  IconContainerWideget(
                    bgColor: Colors.black,
                    icon: Icon(Icons.local_mall_outlined, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
