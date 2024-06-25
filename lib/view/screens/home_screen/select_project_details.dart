import 'package:em_services/business_layer/static_data.dart';
import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/widgets/common_image_view_widget.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

class SelectProjectDetails extends StatefulWidget {
  const SelectProjectDetails({super.key});

  static const routeName = "select-project-details";

  @override
  State<SelectProjectDetails> createState() => _SelectProjectDetailsState();
}

class _SelectProjectDetailsState extends State<SelectProjectDetails> {
  int currentIndex = 0; // Moved here to maintain state between builds

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        context,
        "WCTC-Telok Blangah",
        () {},
      ),
      body: Padding(
        padding: kdefaultMargin,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  // Use google map
                  CommonImageView(
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imagePath: "assets/images/gps_map.png",
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: kcolorBlack.withOpacity(0.4),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 0),
                            color: kcolorWhite,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Tap the map to lead you there',
                            color: kcolorDarkBlue,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const MyText(
              text: "Categories",
              size: 18,
              paddingTop: 16,
              paddingBottom: 16,
              weight: FontWeight.w700,
              color: Color(0xff252B5C),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 16,
              children: List.generate(
                StaticData.categoriesList.length,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                        Navigator.pushNamed(context,
                            StaticData.categoriesList[index]['routes']!);
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: kcolorGrey1,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: currentIndex == index
                                ? kPrimarycolor
                                : Colors.white,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonImageView(
                              height: 32,
                              width: 32,
                              assetImageColor: currentIndex == index
                                  ? kPrimarycolor
                                  : kcolorBlack,
                              imagePath: StaticData.categoriesList[index]
                                  ["imageUrl"],
                            ),
                          ],
                        ),
                      ),
                    ),
                    MyText(
                      text: StaticData.categoriesList[index]['title']!,
                      size: 16,
                      paddingTop: 16,
                      paddingBottom: 16,
                      weight: FontWeight.w700,
                      color:
                          currentIndex == index ? kPrimarycolor : kcolorBlack,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
