import 'package:ecommerce/static/all_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomTextField extends StatelessWidget {
  CostomTextField({
    super.key,
    required this.controller,
    this.validator,
     this.errortext,
    this.prefixIcon,
     this.hintText,
    this.suffixIcon,
    this.icon,
   required this.onChanged,
    this.maxLength,
    this.counterText,
    this.keyboardType,
  });

  TextEditingController controller;

  var validator;

  String? errortext;
  var prefixIcon;
  var hintText;
  var suffixIcon;
  var icon;
  var onChanged;
  var counterText;
  var keyboardType;
  int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      onChanged: onChanged,
      controller: controller,
      keyboardType:keyboardType ,
      obscureText: !validator,
      decoration: InputDecoration(
        counter: counterText,
      
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: AllColor.blackColor),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AllColor.blackColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AllColor.blackColor, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AllColor.blackColor, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AllColor.blackColor, width: 1),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return errortext;
        }
        return null;
      },
    );
  }
}
