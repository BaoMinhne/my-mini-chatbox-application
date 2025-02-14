import 'package:chatbox/auth/login_or_register.dart';

import 'package:flutter/material.dart';

import 'themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatBox',
      theme: lightMode,
      home: LoginOrRegister(),
    );
  }
}
