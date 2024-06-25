import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

AppBar resgistrationAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kcolorWhite,
    elevation: 0,
    leadingWidth: 80,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              "assets/images/goback.png",
              height: 50,
            ),
          ),
        ],
      ),
    ),
  );
}
