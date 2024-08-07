import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/LoginContent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginBloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginState.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 54, 161, 255),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Logincontent(state);
        },
      ),
    );
  }
}
