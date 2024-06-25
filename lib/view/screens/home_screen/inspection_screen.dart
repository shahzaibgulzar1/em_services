import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/screens/home_screen/safety_inspection_checklist.dart';
import 'package:em_services/view/screens/home_screen/safety_non_conformance.dart';
import 'package:em_services/view/widgets/common_image_view_widget.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:flutter/material.dart';

class InspectionScreen extends StatelessWidget {
  const InspectionScreen({super.key});
  static const routeName = 'inspection-screen';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: homeAppbar(context, "Inspection", () {}),
      body: Padding(
        padding: kdefaultMargin,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.03, // 3% of screen height
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                    context, SafetyInspectionChecklist.routeName);
              },
              child: Container(
                height: screenHeight * 0.09, // 9% of screen height
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenHeight *
                      0.02), // Adjusting radius based on screen height
                  border: Border.all(color: kPrimarycolor),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.06), // 6% of screen width
                  child: Row(
                    children: [
                      const MyText(
                        text: 'Safety Inspection Checklist',
                        color: kPrimarycolor,
                        weight: FontWeight.bold,
                        size: 16,
                      ),
                      const Spacer(),
                      CommonImageView(
                        height: screenHeight * 0.045, // 4.5% of screen height
                        width: screenHeight *
                            0.045, // Keep it square based on height
                        imagePath: 'assets/images/forward.png',
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.03, // 3% of screen height
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                    context, SafetyNonConformanceScreen.routeName);
              },
              child: Container(
                height: screenHeight * 0.09, // 9% of screen height
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenHeight *
                      0.02), // Adjusting radius based on screen height
                  border: Border.all(color: kcolorViolet),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.06), // 6% of screen width
                  child: Row(
                    children: [
                      const MyText(
                        text: 'Non-Conformance Report',
                        color: kcolorViolet,
                        weight: FontWeight.bold,
                        size: 16,
                      ),
                      const Spacer(),
                      CommonImageView(
                        height: screenHeight * 0.045, // 4.5% of screen height
                        width: screenHeight *
                            0.045, // Keep it square based on height
                        assetImageColor: kcolorViolet,
                        imagePath: 'assets/images/forward.png',
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
