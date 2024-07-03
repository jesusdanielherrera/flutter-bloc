import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginEvent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginState.dart';
import 'package:in_driver_clone/src/presentacion/utils/BlocFormItem.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final formKey = GlobalKey<FormState>();

  LoginBloc() : super(LoginState()) {
    on<LoginInitEvent>(
      ((event, emit) {
        emit(
          state.copyWith(formKey: formKey),
        );
      }),
    );

    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: BlocFormItem(
            value: event.email.value,
            error: event.email.value.isEmpty ? "Enter your email" : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: BlocFormItem(
            value: event.password.value,
            error: event.password.value.isEmpty
                ? "Incorrect password"
                : event.password.value.length < 6
                    ? "Max 6 caracters required"
                    : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<FormSubmit>((event, emit) {
      log('Email: ${state.email.value}');
      log('password: ${state.password.value}');
    });
  }
}
