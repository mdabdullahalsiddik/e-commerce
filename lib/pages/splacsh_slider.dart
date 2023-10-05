import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:ecommerce/widgets/costom_button.dart';
import 'package:flutter/material.dart';

class SplachSliderPage extends StatefulWidget {
  const SplachSliderPage({super.key});

  @override
  State<SplachSliderPage> createState() => _SplachSliderPageState();
}

class _SplachSliderPageState extends State<SplachSliderPage> {
  PageController _pageController = PageController();
  List pageData = [
    {
      "title": "Choose Product",
      "image": "assets/images/shop_one.png",
      "description": "I Love Shopping",
    },
    {
      "title": "Make Payment",
      "image": "assets/images/shop_tow.png",
      "description": "You get your product & pay simply",
    },
    {
      "title": "Get Your Orders",
      "image": "assets/images/shop_three.png",
      "description": "You get more & more order.",
    },
  ];
  int crentPage = 0;
  onPageChanged(valu) {
    setState(() {
      crentPage = valu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.whiteColor,
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: AllColor.whiteColor),
          backgroundColor: AllColor.whiteColor,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                child: (crentPage != 2) ? AllText.skipText : SizedBox())
          ]),
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: onPageChanged,
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: pageData.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(pageData[index]["image"].toString()),
                  Text(
                    pageData[index]["title"],
                    style: TextStyle(
                        color: AllColor.themeColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    pageData[index]["description"],
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              );
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(pageData.length, (index) {
                    return AnimatedContainer(
                      duration: Duration(microseconds: 200),
                      height: 10,
                      width: 10,
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == crentPage)
                            ? AllColor.themeColor
                            : AllColor.greyColor,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              (crentPage == pageData.length - 1)
                  ? CostomButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      text: Text("Start"),
                    )
                  : SizedBox()
            ],
          )
        ],
      ),
    );
  }
}
