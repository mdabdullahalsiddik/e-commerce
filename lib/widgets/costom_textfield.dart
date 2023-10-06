import 'package:ecommerce/static/all_color.dart';
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

  // ignore: prefer_typing_uninitialized_variables
  var validator;

  String? errortext;
  // ignore: prefer_typing_uninitialized_variables
  var prefixIcon;
  // ignore: prefer_typing_uninitialized_variables
  var hintText;
  // ignore: prefer_typing_uninitialized_variables
  var suffixIcon;
  // ignore: prefer_typing_uninitialized_variables
  var icon;
  // ignore: prefer_typing_uninitialized_variables
  var onChanged;
  // ignore: prefer_typing_uninitialized_variables
  var counterText;
  // ignore: prefer_typing_uninitialized_variables
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
        hintStyle: const TextStyle(color: AllColor.blackColor),
        suffixIcon: suffixIcon,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AllColor.blackColor, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AllColor.blackColor, width: 1),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AllColor.blackColor, width: 1),
        ),
        focusedErrorBorder: const OutlineInputBorder(
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
