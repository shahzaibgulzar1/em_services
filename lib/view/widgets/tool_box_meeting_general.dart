import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import 'app_button.dart';
import 'my_text.dart';

class ToolBoxMeetingGeneral extends StatelessWidget {
  const ToolBoxMeetingGeneral({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            height: screenHeight * 0.20,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.09,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kcolorGrey,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
                    child: const Row(
                      children: [
                        MyText(
                          text: "Status",
                          fontFamily: "Raleway",
                          color: kcolorViolet,
                          weight: FontWeight.bold,
                          paddingLeft: 18,
                        ),
                        Spacer(),
                        MyText(
                          text: "(Draft)",
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                      horizontal: screenWidth * 0.04),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: "Inspected By:"),
                      MyText(text: "Manman Md"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: "Created On:"),
                      MyText(text: "06/06/2024 13:16"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * .02,
          ),
          Container(
            height: screenHeight * 0.09, // 9% of screen height
            width: double.infinity,
            decoration: BoxDecoration(
                color: kcolorGrey,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: kPrimarycolor)),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: kcolorWhite,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kPrimarycolor)),
                    child: Image.asset(
                      'assets/images/inspector.png',
                      color: kPrimarycolor,
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.05,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "Select Subcontractor",
                          size: screenHeight * 0.02, // 2% of screen height
                          weight: FontWeight.bold,
                          color: kPrimarycolor,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 24,
                      color: kPrimarycolor,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: screenHeight * 0.1,
                  width: screenWidth * .20,
                  decoration: BoxDecoration(
                    color: kcolorGrey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: kcolorGrey1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kcolorWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: kcolorViolet,
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "Star Date",
                            fontFamily: "Raleway",
                            size: 16,
                            weight: FontWeight.bold,
                            color: kcolorViolet,
                          ),
                          MyText(
                            text: "06/06/2024",
                            fontFamily: "Raleway",
                            color: kcolorViolet,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.03,
              ),
              Flexible(
                child: Container(
                  height: screenHeight * 0.1,
                  width: screenWidth * .20,
                  decoration: BoxDecoration(
                    color: kcolorGrey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: kcolorGrey1),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kcolorWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.alarm,
                          color: kcolorViolet,
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: "End Date",
                            fontFamily: "Raleway",
                            size: 16,
                            weight: FontWeight.bold,
                            color: kcolorViolet,
                          ),
                          MyText(
                            text: "06/06/2024 ",
                            fontFamily: "Raleway",
                            color: kcolorViolet,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const MyText(
            text: "Conducted At",
            color: kcolorViolet,
            paddingTop: 16,
            paddingBottom: 16,
            weight: FontWeight.bold,
            size: 18,
          ),
          Container(
            height: screenHeight * 0.08,
            decoration: BoxDecoration(
              color: kcolorGrey1,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: kPrimarycolor),
            ),
            child: const Center(
              child: const MyText(
                text: 'Get Location',
                color: Color(0xFF00A0E1),
                size: 16,
                fontFamily: 'Raleway',
                weight: FontWeight.w700,
                letterSpacing: 0.48,
              ),
            ),
          ),
          const MyText(
            text: "Work Location",
            color: kcolorViolet,
            paddingTop: 16,
            paddingBottom: 16,
            weight: FontWeight.bold,
            size: 18,
          ),
          Container(
            height: screenHeight * 0.08,
            decoration: BoxDecoration(
              color: kcolorGrey1,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: kPrimarycolor),
            ),
            child: const Center(
              child: MyText(
                text: 'Add/Update',
                color: Color(0xFF00A0E1),
                size: 16,
                fontFamily: 'Raleway',
                weight: FontWeight.w700,
                letterSpacing: 0.48,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Container(
                  height: screenHeight * 0.14,
                  width: screenWidth * 0.2,
                  decoration: BoxDecoration(
                    color: kcolorGrey,
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(color: const Color(0xFFA9A9A9), width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/upload_image.png",
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.14,
                        color: const Color(0xFFA9A9A9),
                      ),
                      const MyText(
                        text: "Upload video",
                        paddingTop: 16,
                        color: Color(0xFfA9A9A9),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: AppButton(
              onTap: () {},
              title: "Submit",
            ),
          )
        ],
      ),
    );
  }
}
