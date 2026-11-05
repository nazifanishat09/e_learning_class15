import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_class15/src/app_data.dart';
import 'package:flutter_class15/src/page/widgets/customText.dart';
import 'package:flutter_class15/src/page/widgets/iconContainer.dart';
import 'package:flutter_class15/src/page/widgets/searchbar.dart';

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  List<String> office = [
    'Hala Lab office',
    'Food Safety Office',
    'Food Quality Control',
    'Fresh Food Laboratory',
    'Food Testing Center',
    'Nutrition Research Lab',
    'Food Inspection Office',
    'Food Certification Center',
    'Quality Assurance Lab',
    'Organic Food Lab',
  ];

  String selectvalue = 'Hala Lab office';

  List<Map<String, dynamic>> category = [
    {
      'name': 'Burger',
      'prise': '\$70',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFNjqgeT0bltVcLnsCrpDEfka-hD-fIea1bIcvECQGfg&s',
    },
    {
      'name': 'Hot Dog',
      'prise': '\$90',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc2x-H4IC8DLyTVB5zWaUfNHAsV4gdgr-J_Qx55BGtog&s=10',
    },
    {
      'name': 'Pizza',
      'prise': '\$120',
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLdsX_Tpf2M79WVI_sUs8hvyxRIVn_icIg0Zrcylh6oQ&s=10',
    },
    {
      'name': 'French Fries',
      'prise': '\$60',
      'img': 'https://hips.hearstapps.com/hmg-prod/images/11-659c1ea6df051.png',
    },
  ];
  List slider = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMm6FCno3i9gHuNKjJ85hnthh81htKpepxURC6mv2mtg&s=10',

    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsou9WARZW3zdQAJE6TZuasviRj3BybxbI9xFIFS1_7Q&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzL53MhShzuXJokSZ7XPs_DzD0DGOen8EkE1r30FZw7A&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKG15eELSvJidZXGEHncDCEmugMrtnIE2NN3i2G1-Dag&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCEkjMeBnP9E3U9hK9rKVEHNPvgOMz9gnfcz8Tgzd5Ig&s=10',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconContainerWideget(
                      icon: Icon(Icons.sort),
                      bgColor: color_bg,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidgets(
                          title: 'DELIVER TO',
                          fontColor: primary_color,
                          fontWeigth: FontWeight.w500,
                        ),
                        DropdownButton<String>(
                          value: selectvalue,
                          underline: SizedBox(),
                          isExpanded: false,
                          iconSize: 20,

                          items: office.map((officeName) {
                            return DropdownMenuItem(
                              value: officeName,

                              child: SizedBox(
                                width: 120,

                                child: Text(officeName),
                              ),
                            );
                          }).toList(),
                          onChanged: (v) {
                            setState(() {
                              selectvalue = v!;
                            });
                          },
                        ),
                      ],
                    ),
                    Spacer(),
                    IconContainerWideget(
                      icon: Icon(Icons.local_mall_outlined, color: color_white),
                      bgColor: color_black,
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
                  children: [
                    CustomTextWidgets(
                      title: 'All Categories',
                      fontSize: 20,
                      fontWeigth: FontWeight.w500,
                    ),
                    SizedBox(width: 140),
                    CustomTextWidgets(
                      title: 'See All',
                      fontColor: color_grey,
                      fontSize: 15,
                      fontWeigth: FontWeight.w500,
                    ),
                    SizedBox(width: 7),
                    Icon(Icons.arrow_forward_ios, size: 14),
                  ],
                ),

                SizedBox(
                  height: 225,
                  child: ListView.builder(
                    itemCount: category.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,

                    itemBuilder: (c, v) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 15,
                      ),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 10,
                              color: color_grey,
                            ),
                          ],
                          color: color_white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.network(category[v]['img']),
                              Align(
                                alignment: Alignment.topLeft,
                                child: CustomTextWidgets(
                                  title: category[v]['name'],
                                  fontWeigth: FontWeight.w600,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextWidgets(
                                    title: 'Starting',
                                    fontColor: color_grey,
                                    fontWeigth: FontWeight.w500,
                                  ),
                                  CustomTextWidgets(
                                    title: category[v]['prise'],
                                    fontSize: 17,
                                    fontColor: color_grey,
                                    fontWeigth: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidgets(
                      title: 'Open Restaurants',
                      fontSize: 20,
                      fontWeigth: FontWeight.w500,
                    ),
                    SizedBox(width: 100),
                    CustomTextWidgets(
                      title: 'See All',
                      fontColor: color_grey,
                      fontSize: 15,
                      fontWeigth: FontWeight.w500,
                    ),
                    SizedBox(width: 7),
                    Icon(Icons.arrow_forward_ios, size: 14),
                  ],
                ),
                SizedBox(height: 20),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 160,
                    autoPlay: true,
                    viewportFraction: 1.0,

                    autoPlayAnimationDuration: Duration(seconds: 2),
                  ),
                  items: slider.map((url) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(url),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidgets(
                    title: 'Rose Garden Restaurant',
                    fontSize: 20,
                    fontWeigth: FontWeight.w500,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomTextWidgets(
                    title: 'Burger - Chiken - Riche - Wings',
                    fontSize: 15,
                    fontWeigth: FontWeight.w500,
                    fontColor: color_grey,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: primary_color,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(width: 5),
                    CustomTextWidgets(
                      title: '4.7',
                      fontSize: 15,
                      fontWeigth: FontWeight.w500,
                    ),
                    SizedBox(width: 30),
                    Icon(
                      Icons.airport_shuttle_outlined,
                      color: primary_color,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(width: 5),
                    CustomTextWidgets(
                      title: 'Free',
                      fontSize: 15,
                      fontWeigth: FontWeight.w400,
                    ),
                    SizedBox(width: 30),
                    Icon(
                      Icons.access_time,
                      color: primary_color,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(width: 5),
                    CustomTextWidgets(
                      title: '20 min',
                      fontSize: 15,
                      fontWeigth: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
