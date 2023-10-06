import 'package:flutter/material.dart';
import 'package:project/1st_page.dart';
import 'package:project/Catagories/Elec_page.dart';
import 'package:project/Catagories/Fashion_page.dart';

class Secend_page extends StatefulWidget {
  const Secend_page({super.key});

  @override
  State<Secend_page> createState() => _Secend_pageState();
}

class _Secend_pageState extends State<Secend_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Fast_Paage()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.cyan,
                      )),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 30, color: Colors.cyan),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Fashion_page()));
                },
                child: Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade50,
                      borderRadius: BorderRadius.circular(10)
                      // border: Border.all(color: Colors.cyan)
                      ),
                  child: Row(
                    children: [
                      Image.asset('image/Fashiongirl.png'),
                      Expanded(
                          child: Text(
                        'Fashion ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black12,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Elec_page()));
                },
                child: Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.pink.shade50,
                      borderRadius: BorderRadius.circular(10)
                      //border: Border.all(color: Colors.cyan)
                      ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Electronics Devices',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.cyan.shade200,
                        ),
                      )),
                      Container(
                        width: 230,
                        child: Image.asset('image/Gadget.png'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10)
                    //border: Border.all(color: Colors.cyan)
                    ),
                child: Row(
                  children: [
                    Image.asset('image/home.png'),
                    Expanded(
                        child: Text(
                      'Home & LifeStyle',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.lightGreen.shade200,
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10)

                    /// border: Border.all(color: Colors.cyan)
                    ),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Health & Beauty',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    )),
                    Image.asset('image/beauty.png'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10)
                    //border: Border.all(color: Colors.cyan)
                    ),
                child: Row(
                  children: [
                    Image.asset('image/Fashiongirl.png'),
                    Expanded(
                        child: Text(
                      'Fashion Girls',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
