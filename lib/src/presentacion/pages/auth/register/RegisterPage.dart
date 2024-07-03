import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/RegisterContent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterBloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterState.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return RegisterContent(state);
      },
    );
  }
}
