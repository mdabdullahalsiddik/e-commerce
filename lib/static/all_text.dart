import 'package:ecommerce/static/all_color.dart';
import 'package:flutter/material.dart';

class AllText {
  static final splacshText = RichText(
      text: TextSpan(
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

  static final skipText = Text(
    "Skip",
    style: TextStyle(color: AllColor.yellowColor, fontWeight: FontWeight.bold),
  );
  static final LoginAccText = Text(
    "Loing  Your Account",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
  static final LoginWithText = Text(
    "Loing  With",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
  static final singupAccText = Text(
    "Create Your Account",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
   static final otpText = Text(
    "Enter OTP",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );

   static final newPasswordText = Text(
    "Set New Password",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
   static final pinText = Text(
    "Enter Card Pin",
    style: TextStyle(
        color: AllColor.blackColor, fontSize: 30, fontWeight: FontWeight.bold),
  );
}
