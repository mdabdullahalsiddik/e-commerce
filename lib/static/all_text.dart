import 'package:ecommerce/static/all_color.dart';
import 'package:flutter/material.dart';

class AllText {
  static final splacshText = RichText(
      text: const TextSpan(
          text: "Shop",
          style: TextStyle(
              color: AllColor.themeColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
          children: [
        TextSpan(
            text: "luge",
            style: TextStyle(
              color: AllColor.yellowColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ))
      ]));

  static const skipText = Text(
    "Skip",
    style: TextStyle(color: AllColor.yellowColor, fontWeight: FontWeight.bold),
  );
  // ignore: constant_identifier_names
  static const loginAccText = Text(
    "Loing  Your Account",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
  static const loginWithText = Text(
    "Loing  With",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
  static const singupAccText = Text(
    "Create Your Account",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
   static const otpText = Text(
    "Enter OTP",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );

   static const newPasswordText = Text(
    "Set New Password",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
   static const pinText = Text(
    "Enter Card Pin",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
}
