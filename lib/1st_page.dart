import 'package:flutter/material.dart';
import 'package:project/2nd_page.dart';

import 'Class.dart';

class Fast_Paage extends StatefulWidget {
  const Fast_Paage({super.key});

  @override
  State<Fast_Paage> createState() => _Fast_PaageState();
}

class _Fast_PaageState extends State<Fast_Paage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 10, bottom: 15, right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.square,
                          color: Colors.cyan,
                          size: 35,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notification_add_outlined,
                          size: 35,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.cyan)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: PageView.builder(
                      itemCount: 3,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 160,
                            width: double.infinity,
                            child: Image.network(
                              Images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Categories',
                      style: TextStyle(fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Secend_page()));
                      },
                      child: Text(
                        'See more',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: GridView.builder(
                    physics: ScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (_, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                               Navigator.push(context,MaterialPageRoute(builder: (_)=>categories[index]));
                            },
                            child: Container(
                              height: 76,
                              width: 80,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.purpleAccent),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                Images3[index],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            Name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 7),
                          )
                        ],
                      );
                    }),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 20, top: 15),
                    child: Text(
                      'Popular Products',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12)),
                            child: Image.asset(
                              Images2[index],
                              fit: BoxFit.cover,
                            )),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
