import 'package:ecommerce/firebase_systeing.dart';
import 'package:ecommerce/pages/splacsh_page.dart';
import 'package:ecommerce/static/all_color.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main()async {
   WidgetsFlutterBinding.ensureInitialized();
await  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: AllColor.themeColor),
      debugShowCheckedModeBanner: false,
      home: const SplacshPage(),
      builder: EasyLoading.init(),
    );
  }
}
