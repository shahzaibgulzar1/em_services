import 'package:em_services/view/widgets/registration_appbar.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
import '../../../constants/margin_constants.dart';
import '../../widgets/app_button.dart';
import '../../widgets/my_text.dart';
import '../../widgets/my_text_field.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});
  static const routeName = "create-new-password";

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
                    height: MediaQuery.sizeOf(context).height * 0.12,
                  ),
                  const Row(
                    children: [
                      MyText(
                        text: "Create",
                        weight: FontWeight.w400,
                        size: 25,
                      ),
                      MyText(
                        text: "New Password",
                        weight: FontWeight.bold,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 12,
                          color: kcolorDarkgrey),
                      text: "Set your new password so you can login and access",
                      children: [
                        TextSpan(
                          text: " EM SMS",
                          style: TextStyle(
                            fontFamily: "Lato",
                            color: kcolorDarkgrey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    hintText: "New Password",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    hintText: "Re-enter New Password",
                    suffixIcon: const Icon(
                      Icons.lock_outline,
                    ),
                    // suffixIcon: IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(Icons.lock_outline),
                    // ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const MyText(text: "Show password"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: AppButton(
                      onTap: () {},
                      title: "Save",
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
