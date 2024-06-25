import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import 'my_text.dart';

// ignore: must_be_immutable
class TabBarWidget extends StatelessWidget {
  TabBarWidget({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
  });
  String text;
  bool isSelected;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 43,
        width: 140,
        decoration: BoxDecoration(
          color: isSelected ? kPrimarycolor : kcolorGrey1,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: MyText(
            text: text,
            color: isSelected ? kcolorWhite : kPrimarycolor,
            size: 16,
            weight: FontWeight.bold,
            fontFamily: "Raleway",
          ),
        ),
      ),
    );
  }
}
