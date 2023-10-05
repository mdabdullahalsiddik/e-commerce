import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:ecommerce/static/all_icon.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:ecommerce/widgets/costom_button.dart';
import 'package:ecommerce/widgets/costom_textfield.dart';
import 'package:flutter/material.dart';

class ForgetPasswordChamgPage extends StatefulWidget {
  const ForgetPasswordChamgPage({super.key});

  @override
  State<ForgetPasswordChamgPage> createState() =>
      _ForgetPasswordChamgPageState();
}

class _ForgetPasswordChamgPageState extends State<ForgetPasswordChamgPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confamPasswordController = TextEditingController();
    return Scaffold(
      backgroundColor: AllColor.whiteColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AllIcon.logoIcon,
            AllText.newPasswordText,
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: CostomTextField(
                validator: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: passwordController,
                hintText: "Enter  Password",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: CostomTextField(
                validator: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: confamPasswordController,
                hintText: "Enter  Confam Password",
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CostomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  text: Text("Save"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
