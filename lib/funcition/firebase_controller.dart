import 'dart:convert';

import 'package:ecommerce/models/firebase_model.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseData {
  sendData(
    String name,
    String addres,
    String password,
    String phone,
    String mail,
    String post,
  ) async {
    var dataKye = DateTime.now().microsecond;
    var user = UserInfoModel(
      name: name,
      addres: addres,
      phone: phone,
      password: password,
      mail: mail,
      post: post,
    );

    await FirebaseDatabase.instance
        .ref(
          "E-commerce_User",
        )
        .child(
          "${phone}_${name.replaceAll(" ", "_")}_${dataKye}_$post",
        )
        .set(
          user.toJson(),
        );
  }
}

class FirebaseGetData {
  Future<List<UserInfoModel>> getData() async {
    List<UserInfoModel> data = [];
    await FirebaseDatabase.instance
        .ref(
          "E-commerce_User",
        )
        .orderByKey()
        .get()
        .then(
      (value) {
        for (var i in value.children) {
          data.add(
            UserInfoModel.fromJson(
              jsonDecode(
                jsonEncode(i.value),
              ),
            ),
          );
        }
      },
    );
    return data;
  }
}
