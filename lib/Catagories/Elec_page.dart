
import 'package:flutter/material.dart';
import 'package:project/1st_page.dart';
import 'package:project/Class.dart';

class Elec_page extends StatefulWidget {
  const Elec_page({super.key});

  @override
  State<Elec_page> createState() => _Elec_pageState();
}

class _Elec_pageState extends State<Elec_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 20),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=>Fast_Paage()));

                    },
                        icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
                    SizedBox(
                      width: 50,
                    ),
                    Text('Electronics ',style: TextStyle(fontSize: 30,color: Colors.purple),)
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(15.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Image.asset('image/Gadget.png',fit: BoxFit.cover,),
                ),
              ),
              Divider(

                color: Colors.green,
                thickness: 1,
                indent : 10,
                endIndent : 10,
              ),
              GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder:(_,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.purpleAccent)),
                          ),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(
                height: 30,
              ),

              GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder:(_,index){
                    return Column(
                      children: [
                        Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple)
                          ),
                          child: Image.asset(Images4[index]),
                        )
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

