import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

import '../../business_layer/static_data.dart';

class GeneralTabvbarView extends StatelessWidget {
  const GeneralTabvbarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Container(
          height: screenHeight * 0.25, // 25% of screen height
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey),
          ),
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.09, // 9% of screen height
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kcolorGrey,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      MyText(
                        text: "06/06/2024",
                        color: kcolorViolet,
                        paddingLeft: 16,
                      ),
                      Spacer(),
                      Text(
                        "Submitted",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Inspected By:"),
                    MyText(text: "Manman Md"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Created On:"),
                    MyText(text: "06/06/2024 13:16"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Last updated:"),
                    MyText(text: "06/06/2024 13:16"),
                  ],
                ),
              )
            ],
          ),
        ),
        Wrap(
          children: List.generate(
            StaticData.viewInspectionList.length,
            (index) => Padding(
              padding:
                  const EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 8),
              child: Container(
                height: screenHeight * 0.09, // 9% of screen height
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kcolorGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset(
                        StaticData.viewInspectionList[index]["imageUrl"]!,
                        color: kcolorViolet,
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                              text: StaticData.viewInspectionList[index]['name']
                                  as String,
                              size: screenHeight * 0.02, // 2% of screen height
                              weight: FontWeight.bold,
                              color: const Color(0xff172B4D),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.keyboard_arrow_down,
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
      ],
    );
  }
}
