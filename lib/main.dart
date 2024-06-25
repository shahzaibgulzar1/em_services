import 'package:em_services/config/routes/routes.dart';
import 'package:em_services/constants/color_constants.dart';
import 'package:em_services/view/screens/launch/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EM SERVICES',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          surface: kcolorGrey,
          primary: kPrimarycolor,
        ),
        useMaterial3: true,
      ),
      routes: routes,
      home: const SplashScreen(),
    );
  }
}
