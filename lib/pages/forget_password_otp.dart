import 'package:ecommerce/pages/forget_password_chang.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:ecommerce/static/all_icon.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:ecommerce/widgets/costom_button.dart';
import 'package:ecommerce/widgets/costom_textfield.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController otp1Controller = TextEditingController();
    TextEditingController otp2Controller = TextEditingController();
    TextEditingController otp3Controller = TextEditingController();
    TextEditingController otp4Controller = TextEditingController();
    return Scaffold(
      backgroundColor: AllColor.whiteColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AllIcon.logoIcon,
            AllText.otpText,
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                     onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    validator: true,
                    controller: otp1Controller,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                     onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    validator: true,
                    controller: otp2Controller,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                     onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    validator: true,
                    controller: otp3Controller,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                     onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    validator: true,
                    controller: otp4Controller,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter your code? "),
                Text(
                  "00.59",
                  style: TextStyle(
                    color: AllColor.themeColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            TextButton(onPressed: () {}, child: Text("Don't have a code?")),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CostomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPasswordChamgPage(),
                        ));
                  },
                  text: Text("Enter"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
