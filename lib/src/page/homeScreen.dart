import 'package:flutter/material.dart';
import 'package:flutter_class15/src/app_data.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: 
      
      Column(children: [
        Container(height: 40,width: 40,decoration: BoxDecoration(
color: primary_color,

        ),)
      
      
        
      ],)
      
      ,),
    );
  }
}
