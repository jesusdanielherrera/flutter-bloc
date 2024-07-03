import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginBloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginEvent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterBloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/bloc/RegisterEvent.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<LoginBloc>(
      create: (context) => LoginBloc()..add(LoginInitEvent())),
  BlocProvider<RegisterBloc>(
      create: (context) => RegisterBloc()..add(RegisterInitEvent())),
];
