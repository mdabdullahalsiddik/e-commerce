import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:ecommerce/static/all_icon.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:ecommerce/widgets/costom_button.dart';
import 'package:ecommerce/widgets/costom_textfield.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addresController = TextEditingController();
  TextEditingController postController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conPasswordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool passwordValidator = false;
  bool confamPasswordValidator = false;
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
              AllIcon.logoIcon,
              AllText.singupAccText,
              const SizedBox(
                height: 50,
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: CostomTextField(
                          // ignore: non_constant_identifier_names
                          onChanged: (Value) {},
                          validator: true,
                          controller: nameController,
                          errortext: "Enter Your Name",
                          hintText: "Md. Abdullah Al Siddik"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: CostomTextField(
                          // ignore: non_constant_identifier_names
                          onChanged: (Value) {},
                          validator: true,
                          controller: addresController,
                          errortext: "Enter Your Addres",
                          hintText: "Lalbug , Sadar , Dinajpur"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: CostomTextField(
                          // ignore: non_constant_identifier_names
                          onChanged: (Value) {},
                          validator: true,
                          controller: passwordController,
                          errortext: "Enter Your PostCode",
                          hintText: "5200"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: CostomTextField(
                          // ignore: non_constant_identifier_names
                          onChanged: (Value) {},
                          validator: true,
                          controller: phoneController,
                          errortext: "Enter Your Phone",
                          hintText: "8801737374083"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: CostomTextField(
                          // ignore: non_constant_identifier_names
                          onChanged: (Value) {},
                          validator: true,
                          controller: mailController,
                          errortext: "Enter Your Email",
                          hintText: "flutter@gmail.com"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: CostomTextField(
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
                              confamPasswordValidator
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AllColor.themeColor,
                            )),
                        controller: passwordController,
                        errortext: "Enter  Password",
                        hintText: "Enter  Password",
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: CostomTextField(
                          validator: passwordValidator,
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
                          controller: conPasswordController,
                          errortext: "Enter  Confam Password",
                          hintText: "Enter  Confam Password",
                        )),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CostomButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      }
                    },
                    text: const Text("Save"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "You are  registration?",
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
                                  builder: (context) => const LoginPage(),
                                ));
                          },
                          child:  const Text(
                            "Login",
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
