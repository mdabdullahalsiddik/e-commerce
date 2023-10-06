import 'package:ecommerce/pages/login_page.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:ecommerce/static/all_text.dart';
import 'package:ecommerce/widgets/costom_button.dart';
import 'package:ecommerce/widgets/costom_textfield.dart';
import 'package:flutter/material.dart';

class PaymentPinPage extends StatefulWidget {
  const PaymentPinPage({super.key});

  @override
  State<PaymentPinPage> createState() => _PaymentPinPageState();
}

class _PaymentPinPageState extends State<PaymentPinPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController pin1Controller = TextEditingController();
    TextEditingController pin2Controller = TextEditingController();
    TextEditingController pin3Controller = TextEditingController();
    TextEditingController pin4Controller = TextEditingController();
    return Scaffold(
      backgroundColor: AllColor.whiteColor,
      body: SizedBox(
         height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AllText.pinText,
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                    validator: true,
                    // ignore: non_constant_identifier_names
                    onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    controller: pin1Controller,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                    // ignore: non_constant_identifier_names
                    onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    validator: true,
                    controller: pin2Controller,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                    // ignore: non_constant_identifier_names
                    onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    validator: true,
                    controller: pin3Controller,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: CostomTextField(
                    // ignore: non_constant_identifier_names
                    onChanged: (Value){},
                    keyboardType: TextInputType.number,
                    validator: true,
                    controller: pin4Controller,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
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
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  text: const Text("Enter"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
