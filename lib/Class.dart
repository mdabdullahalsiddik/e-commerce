import 'package:project/2nd_page.dart';
import 'package:project/Catagories/Elec_page.dart';
import 'package:project/Catagories/Fashion_page.dart';
import 'package:project/Catagories/health_beauty_page.dart';
import 'package:project/Catagories/home_lifestyle_page.dart';


List<String> Images = [
  'https://images.pexels.com/photos/2832432/pexels-photo-2832432.png?auto=compress&cs=tinysrgb&w=1600',
  'https://images.pexels.com/photos/2832382/pexels-photo-2832382.jpeg?auto=compress&cs=tinysrgb&w=1600',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/800px-The_Blue_Marble_%28remastered%29.jpg'
];
List<String> Images2 = [
  'image/apple.jpg',
  'image/imac.jpg',
  'image/ipad.jpg',
  'image/iphone.jpg',
];
List<String> Images3 = [
  'image/Fashiongirl.png',
  'image/Gadget.png',
  'image/home.png',
  'image/beauty.png',
];
List<String> Name = [
  'Fshion',
  'Elac',
  'Home & LifeStyle',
  'Health & Beauty',

];
List<String> Images4 = [
  'image/apple.jpg',
  'image/iphone.jpg',
  'image/iphone.jpg',
  'image/imac.jpg',
  'image/apple.jpg',
  'image/apple.jpg',


];
List<dynamic> categories = [
  Fashion_page(),
  Elec_page(),
  Life_style(),
  Health(),



];



