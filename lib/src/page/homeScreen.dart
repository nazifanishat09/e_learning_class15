import 'package:flutter/material.dart';
import 'package:flutter_class15/src/app_data.dart';
import 'package:flutter_class15/src/page/widgets/customText.dart';
import 'package:flutter_class15/src/page/widgets/iconContainer.dart';
import 'package:flutter_class15/src/page/widgets/searchbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Map<String, dynamic>> item = [
    {
      'name': 'All',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSGE0uumY4uwrSejpkJeRP8Ggvv8xhyJ_eUlxNwCKl0Q&s=10',
    },
    {
      'name': 'Burger',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFNjqgeT0bltVcLnsCrpDEfka-hD-fIea1bIcvECQGfg&s',
    },
    {
      'name': 'Hot Dog',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc2x-H4IC8DLyTVB5zWaUfNHAsV4gdgr-J_Qx55BGtog&s=10',
    },
    {
      'name': 'Pizza',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLdsX_Tpf2M79WVI_sUs8hvyxRIVn_icIg0Zrcylh6oQ&s=10',
    },
    {
      'name': 'French Fries',
      'img': 'https://hips.hearstapps.com/hmg-prod/images/11-659c1ea6df051.png',
    },
  ];

  int isSelect = 0;
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
                    icon: Icon(Icons.local_mall_outlined, color: color_white),
                    stack: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: primary_color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: CustomTextWidgets(
                          title: '2',
                          fontColor: color_white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CustomTextWidgets(title: 'Hey Halal,'),
                  CustomTextWidgets(
                    title: ' Good Afternoon!',
                    fontWeigth: FontWeight.w600,
                    fontSize: 18,
                  ),
                ],
              ),

              SizedBox(height: 20),
              CustomSearchbar(),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidgets(
                    title: 'All Categories',
                    fontSize: 20,
                    fontWeigth: FontWeight.w500,
                  ),
                  CustomTextWidgets(
                    title: 'See All',
                    fontColor: color_grey,
                    fontSize: 15,
                    fontWeigth: FontWeight.w500,
                  ),
                ],
              ),

              SizedBox(
                height: 85,
                child: ListView.builder(
                  itemCount: item.length,
                  scrollDirection: Axis.horizontal,

                  itemBuilder: (c, v) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isSelect = v;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 140,
                        decoration: BoxDecoration(
                          color: isSelect == v ? select_color : color_bg,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 10,
                              color: color_grey,
                            ),
                          ],
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    item[v]['img'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: CustomTextWidgets(
                                title: item[v]['name'],
                                maxline: 2,
                                fontWeigth: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
