import 'package:ecommerce/static/all_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.whiteColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
