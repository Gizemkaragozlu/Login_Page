import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_page/auth/main_page.dart';

void main() async{
 WidgetsFlutterBinding.ensureInitialized();// firebase bağlanmamız için yazmak zorundayız
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}


