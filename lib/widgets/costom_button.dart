import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomButton extends StatelessWidget {
  var onPressed;
  var text;
  CostomButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}
