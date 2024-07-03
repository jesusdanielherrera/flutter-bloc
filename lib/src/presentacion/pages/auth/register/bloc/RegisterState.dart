import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:in_driver_clone/src/presentacion/utils/BlocFormItem.dart';

class RegisterState extends Equatable {
  final BlocFormItem name;
  final BlocFormItem lastName;
  final BlocFormItem email;
  final BlocFormItem phone;
  final BlocFormItem password;
  final BlocFormItem confirPassword;
  final GlobalKey<FormState>? formKey;

  const RegisterState({
    this.name = const BlocFormItem(error: 'Enter a name'),
    this.lastName = const BlocFormItem(error: 'Enter a lastName'),
    this.email = const BlocFormItem(error: 'Enter a email'),
    this.phone = const BlocFormItem(error: 'Enter a phone'),
    this.password = const BlocFormItem(error: 'Enter a password'),
    this.confirPassword = const BlocFormItem(error: 'Enter a confirPassword'),
    this.formKey,
  });

  RegisterState copyWith({
    BlocFormItem? name,
    BlocFormItem? lastName,
    BlocFormItem? email,
    BlocFormItem? phone,
    BlocFormItem? password,
    BlocFormItem? confirPassword,
    GlobalKey<FormState>? formKey,
  }) {
    return RegisterState(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirPassword: confirPassword ?? this.confirPassword,
      formKey: formKey,
    );
  }

  @override
  List<Object> get props => [
        name,
        lastName,
        email,
        password,
        confirPassword,
      ];
}
