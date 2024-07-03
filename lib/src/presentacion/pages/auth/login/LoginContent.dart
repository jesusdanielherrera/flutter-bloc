import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginBloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginEvent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginState.dart';
import 'package:in_driver_clone/src/presentacion/utils/BlocFormItem.dart';

class Logincontent extends StatelessWidget {
  const Logincontent(this.state, {Key? key}) : super(key: key);

  final LoginState? state;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: state?.formKey,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 10, 137, 183),
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(),
                RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: GlobalText(
                    size: 20,
                    text: "Sign up",
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60, bottom: 60),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 72, 169, 255),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                bottomLeft: Radius.circular(35),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "back...",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/img/car.png",
                        width: 150,
                        height: 150,
                      )),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(bottom: 50),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextForm(
                      validator: (email) {
                        return state?.email.error;
                      },
                      onChanged: (email) {
                        context.read<LoginBloc>().add(
                              EmailChanged(
                                  email: BlocFormItem(
                                value: email,
                              )),
                            );
                      },
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextForm(
                      obscureText: true,
                      validator: (password) {
                        return state?.password.error;
                      },
                      onChanged: (password) {
                        context.read<LoginBloc>().add(
                              PasswordChanged(
                                  password: BlocFormItem(
                                value: password,
                              )),
                            );
                      },
                      hintText: "Password",
                      prefixIcon: Icon(Icons.key_outlined),
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 110)),
                      onPressed: () {
                        if (state!.formKey!.currentState!.validate()) {
                          context.read<LoginBloc>().add(FormSubmit());
                        }
                        log('No Validation');
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        width: 20,
                        height: 1,
                      ),
                      Text(
                        "OR",
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        color: Colors.white,
                        width: 20,
                        height: 1,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(),
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  TextForm({
    required this.prefixIcon,
    required this.hintText,
    required this.onChanged,
    this.obscureText,
    this.validator,
    Key? key,
  }) : super(key: key);

  final Widget prefixIcon;
  final String hintText;
  final bool? obscureText;

  final Function(String) onChanged;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextFormField(
        obscureText: obscureText ?? false,
        validator: validator,
        onChanged: (value) {
          onChanged(value);
        },
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}

class GlobalText extends StatelessWidget {
  const GlobalText({
    Key? key,
    required this.text,
    required this.size,
    this.color,
    this.fontweight,
  }) : super(key: key);
  final String text;
  final double size;
  final Color? color;
  final FontWeight? fontweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontweight,
      ),
    );
  }
}
