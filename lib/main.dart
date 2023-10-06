import 'package:flutter/material.dart';
import 'package:project/1st_page.dart';
import 'package:project/2nd_page.dart';
import 'package:project/Catagories/Elec_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home:Fast_Paage(),
    );

  }
}
