import 'package:em_services/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.onTap,
    required this.title,
  });
  final void Function() onTap;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimarycolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: kPrimarycolor,
        ),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
