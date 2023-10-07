// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserInfoModel {
  String? name;
  String? addres;
  String? post;
  String? phone;
  String? mail;
  String? password;
 
  UserInfoModel({
    this.name,
    this.addres,
    this.post,
    this.phone,
    this.mail,
    this.password,
    
  });
 UserInfoModel.fromJson(dynamic json) {
    name = json['name'];
    addres = json['addres'];
    post = json['post'];
    phone = json['phone'];
    mail = json['mail'];
    password = json['password'];
   
    
  }

  
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['addres'] = addres;
    map['post'] = post;
    map['phone'] = phone;
    map['mail'] = mail;
    map['password'] = password;
 
    return map;
  }
}
