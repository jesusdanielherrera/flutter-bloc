import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterEvent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterState.dart';
import 'package:in_driver_clone/src/presentacion/utils/BlocFormItem.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final formKey = GlobalKey<FormState>();

  RegisterBloc() : super(RegisterState()) {
    on<RegisterInitEvent>(((event, emit) {
      emit(
        state.copyWith(formKey: formKey),
      );
    }));

    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          formKey: formKey,
          name: BlocFormItem(
            value: event.name.value,
            error: event.name.value.isEmpty ? "Enter name" : null,
          ),
        ),
      );
    });

    on<LastNameChanged>((event, emit) {
      emit(
        state.copyWith(
          formKey: formKey,
          name: BlocFormItem(
            value: event.lastName.value,
            error: event.lastName.value.isEmpty ? "Enter last name" : null,
          ),
        ),
      );
    });

    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          formKey: formKey,
          name: BlocFormItem(
            value: event.email.value,
            error: event.email.value.isEmpty ? "Enter email" : null,
          ),
        ),
      );
    });

    on<PhoneChanged>((event, emit) {
      emit(
        state.copyWith(
          formKey: formKey,
          name: BlocFormItem(
            value: event.phone.value,
            error: event.phone.value.isEmpty ? "Enter phone" : null,
          ),
        ),
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          formKey: formKey,
          name: BlocFormItem(
            value: event.password.value,
            error: event.password.value.isEmpty ? "Enter password" : null,
          ),
        ),
      );
    });

    on<ConfirmPasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          formKey: formKey,
          name: BlocFormItem(
            value: event.confirPassword.value,
            error: event.confirPassword.value.isEmpty
                ? "Enter confirmed Password"
                : event.confirPassword.value.length < 6
                    ? 'Max 6 characters'
                    : event.confirPassword.value != state.password.value
                        ? 'password does not match'
                        : null,
          ),
        ),
      );
    });

    on<FormSubmit>(((event, emit) {
      log("name ${state.name.value}");
      log("last name ${state.lastName.value}");
      log("email ${state.email.value}");
      log("phone ${state.phone.value}");
      log("password ${state.password.value}");
      log("confirmed password ${state.confirPassword.value}");
    }));

    on<FormReset>((event, emit) {
      state.formKey?.currentState?.reset();
    });
  }
}
