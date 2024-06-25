import 'dart:async';

import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/view/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginScreen.routeName,
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kcolorWhite,
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/em_services.png",
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.9,
              ),
            ),
            const SizedBox(
              height: 300,
            ),
            const SpinKitFadingCircle(
              size: 40,
              color: kcolorBlack,
            ),
          ],
        ),
      ),
    );
  }
}
