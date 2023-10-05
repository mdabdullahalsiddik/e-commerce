import 'package:ecommerce/pages/splacsh_slider.dart';
import 'package:ecommerce/static/all_icon.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:flutter/material.dart';

class SplacshPage extends StatefulWidget {
  const SplacshPage({super.key});

  @override
  State<SplacshPage> createState() => _SplacshPageState();
}

class _SplacshPageState extends State<SplacshPage> {
  Future welcome() async {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SplachSliderPage(),
        )));
  }

  @override
  void initState() {
    welcome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
         height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [AllIcon.splacshIcon, AllText.splacshText,
      
          
          ],
        ),
      ),
    );
  }
}
