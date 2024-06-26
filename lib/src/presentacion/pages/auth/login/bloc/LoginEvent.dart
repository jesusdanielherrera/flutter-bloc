abstract class LoginEvent {}

class LoginInitEvent extends LoginEvent {}

class EmailChange extends LoginEvent {
  final String email;
  EmailChange({required this.email});
}

class PasswordChanged extends LoginEvent {
  final String password;
  PasswordChanged({required this.password});
}

class FormSubmit extends LoginEvent {}
