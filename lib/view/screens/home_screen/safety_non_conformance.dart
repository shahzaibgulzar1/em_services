import 'package:em_services/view/widgets/app_button.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import '../../../business_layer/static_data.dart';
import '../../../constants/color_constants.dart';
import '../../../constants/margin_constants.dart';
import '../../widgets/common_image_view_widget.dart';
import '../../widgets/my_text.dart';

class SafetyNonConformanceScreen extends StatefulWidget {
  const SafetyNonConformanceScreen({super.key});
  static const routeName = 'safety-non-conformance';

  @override
  State<SafetyNonConformanceScreen> createState() =>
      _SafetyNonConformanceScreenState();
}

class _SafetyNonConformanceScreenState extends State<SafetyNonConformanceScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    bool riskAssessment = false;

    return Scaffold(
      appBar: homeAppbar(context, "Safety Non Conformance", () {}),
      body: Padding(
        padding: kdefaultMargin,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            TabBar(
              controller: _tabController,
              indicatorColor: kPrimarycolor,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                  child: MyText(
                    text: "General",
                    fontFamily: "Raleway",
                    weight: FontWeight.bold,
                    size: 18,
                    color: _tabController.index == 0
                        ? kPrimarycolor
                        : kcolorViolet,
                  ),
                ),
                Tab(
                  child: MyText(
                    text: "Checklist",
                    weight: FontWeight.bold,
                    fontFamily: "Raleway",
                    size: 18,
                    color: _tabController.index == 1
                        ? kPrimarycolor
                        : kcolorViolet,
                  ),
                ),
                Tab(
                  child: MyText(
                    text: "Add on",
                    weight: FontWeight.bold,
                    fontFamily: "Raleway",
                    size: 18,
                    color: _tabController.index == 2
                        ? kPrimarycolor
                        : kcolorViolet,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      SizedBox(height: screenHeight * 0.02),
                      const Row(
                        children: [
                          MyText(
                            text: "Unsafe Act/Condition Report",
                            fontFamily: "Raleway",
                            weight: FontWeight.bold,
                            paddingRight: 10,
                            size: 18,
                            color: kcolorViolet,
                          ),
                          Spacer(),
                          MyText(
                            text: "(Draft)",
                            color: Color(0xffF31C1C),
                          )
                        ],
                      ),
                      Wrap(
                        children: List.generate(
                          StaticData.safetyNonConformanceList.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 8, right: 8),
                            child: Container(
                              height:
                                  screenHeight * 0.09, // 9% of screen height
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: kcolorGrey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: kcolorWhite,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Image.asset(
                                        StaticData
                                                .safetyNonConformanceList[index]
                                            ["imageUrl"]!,
                                        color: kcolorViolet,
                                        height: screenHeight * 0.05,
                                        width: screenWidth * 0.05,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          MyText(
                                            text: StaticData
                                                    .safetyNonConformanceList[
                                                index]['name'] as String,
                                            size: screenHeight *
                                                0.02, // 2% of screen height
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
                                        size: 24,
                                        color: kcolorViolet,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Row(
                        children: [
                          Container(
                            height: screenHeight * 0.1,
                            width: screenWidth * .40,
                            decoration: BoxDecoration(
                              color: kcolorGrey,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: kcolorGrey1),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 10),
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
                                      text: "Date",
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
                          const Spacer(),
                          Container(
                            height: screenHeight * 0.1,
                            width: screenWidth * .40,
                            decoration: BoxDecoration(
                              color: kcolorGrey,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: kcolorGrey1),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 10, right: 10),
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
                                      text: "Time",
                                      fontFamily: "Raleway",
                                      size: 16,
                                      weight: FontWeight.bold,
                                      color: kcolorViolet,
                                    ),
                                    MyText(
                                      text: "13:16",
                                      fontFamily: "Raleway",
                                      color: kcolorViolet,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      AppButton(onTap: () {}, title: 'Submit'),
                    ],
                  ),
                  //////////////general tabar //////
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.03),
                        const MyText(
                          text: "Supporting Document (If Applicable)",
                          size: 16,
                          color: kPrimarycolor,
                          weight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            const MyText(
                              text: "Risk Assessment",
                              size: 15,
                            ),
                            const Spacer(),
                            Checkbox(
                              value: riskAssessment,
                              onChanged: (value) {
                                setState(() {
                                  riskAssessment = value!;
                                });
                              },
                              activeColor: kPrimarycolor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Row(
                          children: [
                            const MyText(
                              text: "Inspection Report",
                              size: 15,
                            ),
                            const Spacer(),
                            Checkbox(
                              value: riskAssessment,
                              onChanged: (value) {
                                setState(() {
                                  riskAssessment = value!;
                                });
                              },
                              activeColor: kPrimarycolor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        const MyText(
                          text: "Follow-Up Action",
                          size: 16,
                          color: kPrimarycolor,
                          weight: FontWeight.bold,
                        ),
                        Row(
                          children: [
                            const Flexible(
                              child: MyText(
                                text:
                                    "Undertake that safety provisions provided under Risk Assessment or Stautory Requirements are implemented",
                                size: 15,
                              ),
                            ),
                            const Spacer(),
                            Checkbox(
                              value: riskAssessment,
                              onChanged: (value) {
                                setState(() {
                                  riskAssessment = value!;
                                });
                              },
                              activeColor: kPrimarycolor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Row(
                          children: [
                            const Flexible(
                              child: MyText(
                                text:
                                    "Stop work until risk control measure(s) is in-place",
                                size: 15,
                              ),
                            ),
                            const Spacer(),
                            Checkbox(
                              value: riskAssessment,
                              onChanged: (value) {
                                setState(() {
                                  riskAssessment = value!;
                                });
                              },
                              activeColor: kPrimarycolor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Flexible(
                              child: MyText(
                                text:
                                    "Risk Written warning according to in-house Rules & Regulation",
                                size: 15,
                              ),
                            ),
                            const Spacer(),
                            Checkbox(
                              value: riskAssessment,
                              onChanged: (value) {
                                setState(() {
                                  riskAssessment = value!;
                                });
                              },
                              activeColor: kPrimarycolor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Row(
                          children: [
                            const Flexible(
                              fit: FlexFit.loose,
                              child: MyText(
                                text:
                                    "Impose administrative charge of S'\$ for safety violation on",
                                size: 15,
                              ),
                            ),
                            const Spacer(),
                            Checkbox(
                              value: riskAssessment,
                              onChanged: (value) {
                                setState(() {
                                  riskAssessment = value!;
                                });
                              },
                              activeColor: kPrimarycolor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ), //
                  ///add on
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 8, right: 8),
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
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: kcolorWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                      "assets/images/file.png",
                                      color: kcolorViolet,
                                      height: screenHeight * 0.05,
                                      width: screenWidth * 0.05,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyText(
                                          text: 'Select Document',
                                          size: screenHeight *
                                              0.02, // 2% of screen height
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
                                      size: 24,
                                      color: kcolorViolet,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const MyText(
                          text: "Photo",
                          size: 18,
                          weight: FontWeight.bold,
                          color: kcolorViolet,
                          paddingTop: 16,
                          paddingBottom: 16,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Container(
                                height: screenHeight * 0.16,
                                width: screenWidth * 0.42,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: kPrimarycolor, width: 1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CommonImageView(
                                      imagePath:
                                          "assets/images/upload_image.png",
                                      height: screenHeight * 0.05,
                                      width: screenWidth * 0.14,
                                    ),
                                    const MyText(
                                      text: "Upload from Gallery",
                                      paddingTop: 16,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.02,
                            ),
                            Flexible(
                              child: Container(
                                height: screenHeight * 0.16,
                                width: screenWidth * 0.44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: kcolorDarkgrey, width: 1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CommonImageView(
                                      imagePath: "assets/images/camra.png",
                                      height: screenHeight * 0.05,
                                      width: screenWidth * 0.14,
                                    ),
                                    const MyText(
                                      text: "Take Photo from Camera",
                                      paddingTop: 16,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const MyText(
                          text: "Signature",
                          size: 18,
                          weight: FontWeight.bold,
                          color: kcolorViolet,
                          paddingTop: 16,
                          paddingBottom: 16,
                        ),
                        Container(
                          height: screenHeight * .2,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: kcolorGrey,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: kPrimarycolor),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add_circle_outline_rounded,
                              color: Color(0xff757575).withOpacity(0.42),
                              size: 50,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: AppButton(onTap: () {}, title: 'Submit'),
                        )
                      ],
                    ),
                  ),

                  ///3rd tapview
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
