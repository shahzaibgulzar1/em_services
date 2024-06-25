import 'package:flutter/material.dart';
import 'package:em_services/view/widgets/common_image_view_widget.dart';
import 'package:em_services/view/widgets/my_text_field.dart';
import 'package:em_services/view/widgets/app_button.dart';

class AddOn extends StatelessWidget {
  const AddOn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight * 0.03, // 3% of screen height
          ),
          CommonImageView(
            imagePath: "assets/images/add_on.png",
            height: screenHeight * 0.15, // 15% of screen height
            width: screenHeight * 0.15, // Keep it square based on height
          ),
          SizedBox(
            height: screenHeight * 0.03, // 3% of screen height
          ),
          MyTextField(
            hintText: 'Type here...',
            maxLines: 4,
          ),
          SizedBox(
            height: screenHeight * 0.03, // 3% of screen height
          ),
          AppButton(
            onTap: () {},
            title: 'Submit',
            // 50% of screen width
          ),
        ],
      ),
    );
  }
}
