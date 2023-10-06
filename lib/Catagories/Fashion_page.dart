import 'package:flutter/material.dart';

class Fashion_page extends StatefulWidget {
  const Fashion_page({super.key});

  @override
  State<Fashion_page> createState() => _Fashion_pageState();
}

class _Fashion_pageState extends State<Fashion_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion'),
      ),

    );
  }
}
