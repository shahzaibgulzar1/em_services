import 'package:em_services/business_layer/static_data.dart';
import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

import 'common_image_view_widget.dart';

Widget buildDrawer() {
  return Drawer(
    backgroundColor: kPrimarycolor,
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(color: kPrimarycolor),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: kcolorWhite, width: 1.5),
                    shape: BoxShape.circle),
                child: CommonImageView(
                  radius: 80,
                  height: 80,
                  width: 100,
                  fit: BoxFit.cover,
                  imagePath: 'assets/images/person_image.png',
                ),
              ),
              const MyText(
                text: "Philippe Troussier",
                color: kcolorWhite,
                size: 16,
              ),
              const MyText(
                text: "(Electrician)",
                color: kcolorWhite,
              ),
              //  ?
            ],
          ),
        ),
        Container(
          color: kPrimarycolor,
          child: Wrap(
            children: List.generate(
              StaticData.appDrawerList.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 8, right: 8),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kcolorWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        CommonImageView(
                          height: 24,
                          width: 24,
                          // fit: BoxFit.cover,
                          imagePath: StaticData.appDrawerList[index]
                              ["imageUrl"],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: StaticData.appDrawerList[index]['name']
                                    as String,
                                size: 18,
                                weight: FontWeight.bold,
                                color: const Color(0xff172B4D),
                                paddingBottom: 8,
                                paddingTop: 8,
                              ),
                              MyText(
                                text: StaticData.appDrawerList[index]['about']
                                    as String,
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xffC1C7D0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
