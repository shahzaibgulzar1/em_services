import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/constants/margin_constants.dart';
import 'package:em_services/view/screens/auth/forgot_password.dart';
import 'package:em_services/view/screens/bottom_navbar/bottom_navbar.dart';
import 'package:em_services/view/widgets/app_button.dart';
import 'package:em_services/view/widgets/my_text.dart';
import 'package:em_services/view/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = 'login-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        text: "Let’s ",
                        weight: FontWeight.w400,
                        size: 25,
                      ),
                      MyText(
                        text: "Login",
                        weight: FontWeight.bold,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const MyText(
                    text: "quis nostrud exercitation ullamco laboris nisi ut",
                    size: 12,
                    paddingBottom: 16,
                  ),
                  MyTextField(
                    hintText: "Username",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    hintText: "Password",
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ForgotPasswordScreen.routeName);
                        },
                        child: const MyText(text: "Forgot password?"),
                      ),
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
                      onTap: () {
                        Navigator.pushNamed(
                            context, BottomNavbarScreen.routeName);
                      },
                      title: "Login",
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
