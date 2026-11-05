
import 'package:flutter/material.dart';
import 'package:flutter_class15/src/app_data.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: color_bg,
        prefixIcon: Icon(Icons.search),
        hintText: "Search dishes, restaurants",
    
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
