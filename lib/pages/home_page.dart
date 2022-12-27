import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Giriş Yapıldı :' + user.email!),
          ),
          MaterialButton(
            onPressed: (() {
              FirebaseAuth.instance.signOut();
            }),
            color: Colors.deepPurple.shade400,
            child: Text('Çıkış Yap'),
          ),
        ],
      ),
    );
  }
}
