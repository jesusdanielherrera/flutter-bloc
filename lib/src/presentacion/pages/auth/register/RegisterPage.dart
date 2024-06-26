import 'package:flutter/material.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/RegisterContent.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return const RegisterContent();
  }
}
