import 'package:em_services/constants/color_constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    this.controller,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.height,
    this.borderColor,
    this.maxLines = 1,
    this.validator,
    this.isObSecure = false,
    this.isReadOnly = false,
    this.marginBottom = 10,
    this.contentPadding,
    this.borderRadius,
    super.key,
    this.onTap,
  });
  TextEditingController? controller = TextEditingController();
  String? hintText;
  String? labelText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  double? height;

  int maxLines;

  TextInputType? keyboardType;
  Color? borderColor;
  ValueChanged<String>? onChanged;
  FormFieldValidator<String>? validator;
  bool? isObSecure;
  bool? isReadOnly;
  double? marginBottom;
  double? borderRadius;
  EdgeInsets? contentPadding;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: EdgeInsets.only(bottom: marginBottom!),
        child: TextFormField(
          onTap: onTap,
          readOnly: isReadOnly!,
          obscureText: isObSecure!,
          validator: validator,
          maxLines: maxLines,
          cursorColor: kcolorBlack,
          keyboardType: keyboardType,
          onChanged: onChanged,
          style: const TextStyle(
            fontFamily: "Raleway",
            fontSize: 14,
            color: kcolorBlack,
            fontWeight: FontWeight.w400,
          ),
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
            fillColor: kcolorGrey1,
            labelText: labelText,
            hintText: hintText,
            labelStyle: const TextStyle(
              fontFamily: "Raleway",
              fontSize: 14,
              color: kcolorGrey1,
            ),
            hintStyle: const TextStyle(
              fontFamily: "Lato",
              fontSize: 12,
              color: Color(0xffA1A5C1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: kPrimarycolor,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? kcolorWhite,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            // contentPadding: EdgeInsets.symmetric(
            //     horizontal: maxLines > 1 ? 30 : 10,
            //     vertical: maxLines > 1 ? 20 : 10),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? kcolorWhite,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 10),
            ),
          ),
        ),
      ),
    );
  }
}
