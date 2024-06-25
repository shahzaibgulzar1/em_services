import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/widgets/app_button.dart';
import 'package:em_services/view/widgets/common_image_view_widget.dart';
import 'package:em_services/view/widgets/home_appbar.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:em_services/view/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class DefectsHazardsScreen extends StatelessWidget {
  const DefectsHazardsScreen({super.key});
  static const routeName = 'defects-hazards';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: homeAppbar(
        context,
        'Defects/hazards',
        () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: kdefaultMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const MyText(
                text:
                    "Upload Photos of Defects/Hazards spotted for Subcontractor",
                size: 18,
                paddingBottom: 24,
                weight: FontWeight.w700,
                color: kcolorViolet,
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      height: screenHeight * 0.16,
                      width: screenWidth * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kPrimarycolor, width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CommonImageView(
                            imagePath: "assets/images/upload_image.png",
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
                        border: Border.all(color: kcolorDarkgrey, width: 1),
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
                text: "Description of Defectives/Incidents",
                size: 18,
                paddingBottom: 24,
                paddingTop: 16,
                weight: FontWeight.w700,
                color: kcolorViolet,
              ),
              MyTextField(
                hintText: "Type here...",
                maxLines: 4,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: AppButton(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Container(
                              width: screenWidth * 0.7,
                              height: screenHeight * 0.3,
                              padding: const EdgeInsets.only(
                                top: 30,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: kcolorWhite,
                                  width: 1.5,
                                ),
                                color: kcolorWhite,
                              ),
                              child: Center(
                                child: Column(
                                  children: [
                                    CommonImageView(
                                      imagePath: "assets/images/success.png",
                                      height: screenHeight * 0.15,
                                      width: screenWidth * 0.3,
                                    ),
                                    const MyText(
                                      text: "Submitted",
                                      size: 18,
                                      paddingBottom: 24,
                                      weight: FontWeight.w700,
                                      color: kcolorDarkgrey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    title: "Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
