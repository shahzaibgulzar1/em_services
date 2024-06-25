import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/screens/home_screen/select_project_details.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
import '../../widgets/common_image_view_widget.dart';
import '../../widgets/home_appbar.dart';
import '../../widgets/my_text.dart';

class SelectProjectScreen extends StatelessWidget {
  const SelectProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: homeAppbar(
        context,
        'Select Project',
        () {},
      ),
      body: Padding(
        padding: kdefaultMargin,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.12,
            ),
            Wrap(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, SelectProjectDetails.routeName);
                    },
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: kcolorGrey1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              CommonImageView(
                                height: 100,
                                width: 120,
                                radius: 10,
                                imagePath: 'assets/images/building_shape.png',
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff53587A)
                                        .withOpacity(0.70),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/building.png',
                                          // color: kcolorWhite,
                                          height: 16,
                                          width: 10,
                                        ),
                                        const MyText(
                                          paddingLeft: 4,
                                          text: "Loreipsum",
                                          color: kcolorWhite,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 8), // Add some spacing
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Align text to the start
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyText(
                                    text: "WCTC - Telok Blangah",
                                    fontFamily: "Raleway",
                                    weight: FontWeight.bold,
                                    size: 16,
                                    color: kPrimarycolor,
                                  ),
                                  SizedBox(
                                      height:
                                          4), // Add some spacing between texts
                                  Row(
                                    children: [
                                      MyText(
                                        text: "Code",
                                        color: Color(0xff252B5C),
                                        fontFamily: "Raleway",
                                        size: 14,
                                      ),
                                      MyText(
                                        paddingLeft: 24,
                                        text: "398",
                                        color: Color(0xff252B5C),
                                        // fontFamily: "Ralewa",
                                        weight: FontWeight.bold,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      MyText(
                                        text: "Duration:",
                                        color: Color(0xff252B5C),
                                        fontFamily: "Raleway",
                                        size: 14,
                                      ),
                                      MyText(
                                        paddingLeft: 16,
                                        text: "5/4/24 - 18/8/24",
                                        color: Color(0xff252B5C),
                                        // fontFamily: "Ralewa",
                                        weight: FontWeight.bold,
                                        size: 14,
                                      )
                                    ],
                                  ),
                                ],
                              ),
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
    );
  }
}
