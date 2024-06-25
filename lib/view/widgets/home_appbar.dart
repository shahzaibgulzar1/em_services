import 'package:em_services/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

PreferredSize homeAppbar(
    BuildContext context, String title, VoidCallback? ontap) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60.0),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      child: AppBar(
        backgroundColor: kPrimarycolor,
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
                  "assets/images/back_home_.png",
                  height: 50,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        title: MyText(
          text: title,
          color: kcolorWhite,
          size: 20,
          weight: FontWeight.w700,
        ),
        actions: [
          IconButton(
            onPressed: ontap,
            icon: const Icon(
              Icons.replay,
              color: kcolorWhite,
            ),
          ),
        ],
      ),
    ),
  );
}
