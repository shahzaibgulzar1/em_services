import 'package:em_services/view/screens/auth/create_new_password.dart';
import 'package:em_services/view/widgets/registration_appbar.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../constants/color_constants.dart';
import '../../../constants/margin_constants.dart';
import '../../widgets/app_button.dart';
import '../../widgets/my_text.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static const routeName = "Verification-Screen";

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      margin: const EdgeInsets.only(right: 10),
      height: 70,
      width: 70,
      textStyle: const TextStyle(
        fontFamily: 'Lato',
        fontWeight: FontWeight.w400,
        color: kcolorDarkgrey,
        fontSize: 20,
      ),
      decoration: BoxDecoration(
        color: kcolorGrey1,
        border: Border.all(
          width: 1.5,
          color: kcolorDarkgrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
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
                        text: "Enter the ",
                        weight: FontWeight.w400,
                        size: 25,
                      ),
                      MyText(
                        text: "code",
                        weight: FontWeight.bold,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const MyText(
                    text: "Enter the 4 digit code that we just sent to ",
                    size: 12,
                    paddingBottom: 16,
                  ),
                  const MyText(
                    text: "+11 8839030293 ",
                    size: 12,
                    weight: FontWeight.w700,
                    paddingBottom: 24,
                  ),
                  Pinput(
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 42),
                    child: AppButton(
                      onTap: () {
                        Navigator.pushNamed(
                            context, CreateNewPasswordScreen.routeName);
                      },
                      title: "Send",
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: kcolorGrey1,
                            borderRadius: BorderRadius.circular(25)),
                        height: 50,
                        width: 90,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.timer),
                            MyText(text: "0:30"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const MyText(
                        text: "Didn’t receive the Code?",
                        fontFamily: "Raleway",
                        size: 14,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const MyText(
                          text: "Resend Code",
                          size: 14,
                          weight: FontWeight.bold,
                        ),
                      ),
                    ],
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
