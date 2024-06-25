import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/view/screens/home_screen/list_submitted_toolbox_meeting.dart';
import 'package:em_services/view/screens/home_screen/view_inspection_screen.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import '../../widgets/my_text.dart';

class SafetyInspectionChecklist extends StatelessWidget {
  const SafetyInspectionChecklist({super.key});
  static const routeName = 'safety-inspection-checklist';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    void showOptions(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: const OptionsMenu(),
          );
        },
      );
    }

    return Scaffold(
      appBar: homeAppbar(context, "Safety Inspection Checklist", () {}),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.25,
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
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                      child: Row(
                        children: [
                          const MyText(
                            text: "06/06/2024",
                            color: kcolorViolet,
                            paddingLeft: 16,
                          ),
                          const Text(
                            "Submitted",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              showOptions(context);
                            },
                            icon: const Icon(Icons.more_vert),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: "Created On:"),
                        MyText(text: "06/06/2024 13:16"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.04,
                        vertical: screenHeight * 0.01),
                    child: const Row(
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
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.25,
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
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                      child: Row(
                        children: [
                          const MyText(
                            text: "06/06/2024",
                            color: kcolorViolet,
                            paddingLeft: 16,
                          ),
                          const Text(
                            "Draft",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              showOptions(context);
                            },
                            icon: const Icon(Icons.more_vert),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: "Created On:"),
                        MyText(text: "06/06/2024 13:16"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.04,
                        vertical: screenHeight * 0.01),
                    child: const Row(
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
          ],
        ),
      ),
    );
  }
}

class OptionsMenu extends StatelessWidget {
  const OptionsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.4,
      height: screenHeight * 0.25,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: screenWidth * 0.4,
              height: screenHeight * 0.25,
              decoration: ShapeDecoration(
                color: const Color(0xFFF2FBFF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFE4E4E4)),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: screenWidth * 0.4,
              height: screenHeight * 0.05,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE4E4E4)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.1,
            top: screenHeight * 0.01,
            child: const Text(
              'Select Action',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF242B5C),
                fontSize: 12,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                height: 1.5,
                letterSpacing: 0.36,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.1,
            top: screenHeight * 0.07,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ViewInspectionScreen.routeName);
              },
              child: const Text(
                'View',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xA5242B5C),
                  fontSize: 12,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  letterSpacing: 0.36,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.1,
            top: screenHeight * 0.11,
            child: const Text(
              'Update',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xA5242B5C),
                fontSize: 12,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: 0.36,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.1,
            top: screenHeight * 0.15,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                    context, ListSubmittedToolboxMeetingScreen.routeName);
              },
              child: const Text(
                'Submit',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xA5242B5C),
                  fontSize: 12,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  letterSpacing: 0.36,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.1,
            top: screenHeight * 0.19,
            child: const Text(
              'Delete',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xA5242B5C),
                fontSize: 12,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: 0.36,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.1,
            top: screenHeight * 0.23,
            child: const Text(
              'Cancel',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFFE33F1B),
                fontSize: 12,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: 0.36,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.03,
            top: screenHeight * 0.1,
            child: Container(
              width: screenWidth * 0.33,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDEDEDE),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.03,
            top: screenHeight * 0.14,
            child: Container(
              width: screenWidth * 0.33,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDEDEDE),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.03,
            top: screenHeight * 0.18,
            child: Container(
              width: screenWidth * 0.33,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDEDEDE),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.03,
            top: screenHeight * 0.22,
            child: Container(
              width: screenWidth * 0.33,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDEDEDE),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
