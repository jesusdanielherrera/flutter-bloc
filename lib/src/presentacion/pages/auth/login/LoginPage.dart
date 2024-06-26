import 'package:flutter/material.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/LoginContent.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Color.fromARGB(255, 54, 161, 255),
      body: Logincontent(),
    );
  }
}
