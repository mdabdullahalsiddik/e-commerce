import 'package:ecommerce/funcition/firebase_controller.dart';
import 'package:ecommerce/models/firebase_model.dart';
import 'package:ecommerce/pages/forget_password_otp.dart';
import 'package:ecommerce/pages/home_page.dart';
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
  bool passwordValidator = false;
  bool login = false;
  String? userMail;
  String? userPhone;
  String? userPassword;
  Future<bool> loginCheck(phone, password) async {
    List<UserInfoModel> data = await FirebaseGetData().getData();
    for (var i in data) {
      if (i.phone == phone || i.mail == phone) {
        userPassword = phone;
        if (i.password == password) {
          return true;
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.whiteColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              AllIcon.logoIcon,
              AllText.loginAccText,
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  CostomTextField(
                      // ignore: non_constant_identifier_names
                      onChanged: (Value) {},
                      validator: true,
                      controller: userController,
                      errortext: "Enter Your Email or Phone",
                      hintText: "Enter Your Email or Phone"),
                  CostomTextField(
                      validator: passwordValidator,
                      onChanged: (value) {
                        setState(() {});
                      },
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordValidator = !passwordValidator;
                            });
                          },
                          icon: Icon(
                            passwordValidator
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AllColor.themeColor,
                          )),
                      controller: passwordController,
                      maxLength: 8,
                      errortext: "Enter Your Password",
                      hintText: "Enter Your Password",
                      counter: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OtpPage(),
                                ));
                          },
                          child: const Text("Forget Password?"))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CostomButton(
                        onPressed: () async {
                          login = await loginCheck(
                              userController.text, passwordController.text);
                          if (login == true) {
                            // ignore: use_build_context_synchronously
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ));
                          } else {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Incorret username and password"),
                                duration: Duration(seconds: 10),
                              ),
                            );
                          }
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const HomePage(),
                          //     ));
                        },
                        text: const Text("Login"),
                      ),
                    ],
                  ),
                  AllText.loginWithText,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.g_mobiledata_outlined,
                            size: 60,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.apple_sharp,
                            size: 50,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
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
                                  builder: (context) => const SingUpPage(),
                                ));
                          },
                          child: const Text(
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
      ),
    );
  }
}
