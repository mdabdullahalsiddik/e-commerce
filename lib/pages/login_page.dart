import 'package:ecommerce/pages/forget_password_otp.dart';
import 'package:ecommerce/pages/payment_pin.dart';
import 'package:ecommerce/pages/singup_page.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:ecommerce/static/all_icon.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:ecommerce/widgets/costom_button.dart';
import 'package:ecommerce/widgets/costom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool confamPasswordValidator = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.whiteColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AllIcon.logoIcon,
            AllText.LoginAccText,
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: CostomTextField(
                      onChanged: (Value) {},
                      validator: true,
                      controller: userController,
                      errortext: "Enter Your Email",
                      hintText: "flutter@gmail.com"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: CostomTextField(
                      validator: confamPasswordValidator,
                      onChanged: (value) {
                        setState(() {});
                      },
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              confamPasswordValidator =
                                  !confamPasswordValidator;
                            });
                          },
                          icon: Icon(
                            confamPasswordValidator
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AllColor.themeColor,
                          )),
                      controller: passwordController,
                      errortext: "Enter Your Password",
                      hintText: "!@#123A!trd",
                      counterText: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OtpPage(),
                                ));
                          },
                          child: Text("Forget Password?"))),
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
                              builder: (context) => PaymentPinPage(),
                            ));
                      },
                      text: Text("Login"),
                    ),
                  ],
                ),
                AllText.LoginWithText,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.g_mobiledata_outlined,
                          size: 60,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.apple_sharp,
                          size: 50,
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You are not registration?",
                      style: TextStyle(
                        color: AllColor.blackColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SingUpPage(),
                              ));
                        },
                        child: Text(
                          "SingUp",
                          style: TextStyle(
                            color: AllColor.themeColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
