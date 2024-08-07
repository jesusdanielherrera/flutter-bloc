import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/LoginContent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterBloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterEvent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterState.dart';
import 'package:in_driver_clone/src/presentacion/utils/BlocFormItem.dart';

class RegisterContent extends StatelessWidget {
  RegisterState state;

  RegisterContent(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: state.formKey,
        child: SingleChildScrollView(
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
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: GlobalText(
                        size: 25,
                        text: "Sign up",
                        color: Colors.white,
                        fontweight: FontWeight.bold,
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
                  margin: EdgeInsets.only(
                    right: 25,
                    left: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close)),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/img/delivery.png",
                            width: 150,
                            height: 150,
                          )),
                      Container(
                        alignment: Alignment.center,
                        child: TextForm(
                          validator: (name) {
                            return state.name.error;
                          },
                          onChanged: (name) {
                            context.read<RegisterBloc>().add(
                                  NameChanged(
                                      name: BlocFormItem(
                                    value: name,
                                  )),
                                );
                          },
                          hintText: "Name",
                          prefixIcon: Icon(Icons.person_2_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: TextForm(
                          validator: (lastName) {
                            return state.lastName.error;
                          },
                          onChanged: (lastName) {
                            context.read<RegisterBloc>().add(
                                  LastNameChanged(
                                      lastName: BlocFormItem(
                                    value: lastName,
                                  )),
                                );
                          },
                          hintText: "Last name",
                          prefixIcon: Icon(Icons.person_2_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: TextForm(
                          validator: (email) {
                            return state.email.error;
                          },
                          onChanged: (email) {
                            context.read<RegisterBloc>().add(
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
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: TextForm(
                          validator: (phone) {
                            return state.phone.error;
                          },
                          onChanged: (phone) {
                            context.read<RegisterBloc>().add(
                                  PhoneChanged(
                                      phone: BlocFormItem(
                                    value: phone,
                                  )),
                                );
                          },
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.phone_android_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: TextForm(
                          validator: (password) {
                            return state.password.error;
                          },
                          obscureText: true,
                          onChanged: (password) {
                            context.read<RegisterBloc>().add(
                                  PasswordChanged(
                                      password: BlocFormItem(
                                    value: password,
                                  )),
                                );
                          },
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: TextForm(
                          validator: (confirPassword) {
                            return state.confirPassword.error;
                          },
                          obscureText: true,
                          onChanged: (confirPassword) {
                            context.read<RegisterBloc>().add(
                                  ConfirmPasswordChanged(
                                      confirPassword: BlocFormItem(
                                    value: confirPassword,
                                  )),
                                );
                          },
                          hintText: "Confirmed password",
                          prefixIcon: Icon(Icons.password_outlined),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: TextButton(
                          onPressed: () {
                            if (state.formKey!.currentState!.validate()) {
                              context.read<RegisterBloc>().add(FormSubmit());
                              context.read<RegisterBloc>().add(FormReset());
                            }
                          },
                          child: Text(
                            "CREATE ACCOUNT",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
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
                            "Are you have an account?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
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
        ),
      ),
    );
  }
}
