import 'package:ecommerce/funcition/firebase_controller.dart';
import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:ecommerce/static/all_icon.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:ecommerce/widgets/costom_button.dart';
import 'package:ecommerce/widgets/costom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
              const SizedBox(
                height: 20,
              ),
              AllIcon.logoIcon,
              AllText.singupAccText,
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    CostomTextField(
                        // ignore: non_constant_identifier_names
                        onChanged: (Value) {},
                        validator: true,
                        counterText: "",
                        controller: nameController,
                        errortext: "Enter Your Name",
                        hintText: "Md. Abdullah Al Siddik"),
                    CostomTextField(
                        // ignore: non_constant_identifier_names
                        onChanged: (Value) {},
                        validator: true,
                        controller: addresController,
                        counterText: "",
                        errortext: "Enter Your Addres",
                        hintText: "Enter Your Addres"),
                    CostomTextField(
                        // ignore: non_constant_identifier_names
                        onChanged: (Value) {},
                        validator: true,
                        controller: postController,
                        counterText: "",
                        errortext: "Enter Your PostCode",
                        hintText: "Enter Your PostCode"),
                    CostomTextField(
                        // ignore: non_constant_identifier_names
                        onChanged: (Value) {},
                        validator: true,
                        controller: phoneController,
                        counterText: "",
                        errortext: "Enter Your Phone",
                        hintText: "Enter Your Phone Number"),
                    CostomTextField(
                        // ignore: non_constant_identifier_names
                        onChanged: (Value) {},
                        validator: true,
                        controller: mailController,
                        counterText: "",
                        errortext: "Enter Your Email",
                        hintText: "Enter Your Email"),
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
                      counterText: "",
                      maxLength: 8,
                      errortext: "Enter  Password",
                      hintText: "Enter  Password",
                    ),
                    CostomTextField(
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
                      controller: conPasswordController,
                      counterText: "",
                      maxLength: 8,
                      errortext: "Enter  Confam Password",
                      hintText: "Enter  Confam Password",
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CostomButton(
                    onPressed: () {
                      if (passwordController.text.length == 8 &&
                          conPasswordController.text.length == 8) {
                        if (formkey.currentState!.validate()) {
                          // if (nameController.text.isNotEmpty &&
                          //     mailController.text.isNotEmpty &&
                          //     addresController.text.isNotEmpty &&
                          //     phoneController.text.isNotEmpty &&
                          //     passwordController.text.isNotEmpty &&
                          //     conPasswordController.text.isNotEmpty &&
                          //     postController.text.isNotEmpty) {
                          if (passwordController.text ==
                              conPasswordController.text) {
                            EasyLoading.show(status: 'loading...');
                            setState(() async {
                              await FirebaseData().sendData(
                                nameController.text,
                                addresController.text,
                                passwordController.text,
                                phoneController.text,
                                mailController.text,
                                postController.text,
                              );

                              EasyLoading.showSuccess('Great Success!');
                              // ignore: use_build_context_synchronously
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ));
                            });
                            //  }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "Password and Confomepassword are not mach "),
                                duration: Duration(seconds: 10),
                              ),
                            );
                          }
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Enter 8 Digit Password"),
                            duration: Duration(seconds: 10),
                          ),
                        );
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
                          child: const Text(
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
