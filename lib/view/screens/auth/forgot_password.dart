import 'package:em_services/view/screens/auth/verification_screen.dart';
import 'package:em_services/view/widgets/registration_appbar.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
import '../../../constants/margin_constants.dart';
import '../../widgets/app_button.dart';
import '../../widgets/my_text.dart';
import '../../widgets/my_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static const routeName = "forgot-password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: resgistrationAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: kcolorWhite,
            child: Padding(
              padding: kdefaultMargin,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.10,
                  ),
                  const Row(
                    children: [
                      MyText(
                        text: "Forget ",
                        weight: FontWeight.w400,
                        size: 25,
                      ),
                      MyText(
                        text: "Password",
                        weight: FontWeight.bold,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const MyText(
                    text: "Enter Phone Number",
                    size: 12,
                    paddingBottom: 16,
                  ),
                  MyTextField(
                    hintText: "+11 8839030293",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: AppButton(
                      onTap: () {
                        Navigator.pushNamed(
                            context, VerificationScreen.routeName);
                      },
                      title: "Send",
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
