import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_driver_clone/blocProvider.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/LoginPage.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginBloc.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/bloc/LoginEvent.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/register/RegisterPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'register': (BuildContext context) => RegisterPage()
        },
      ),
    );
  }
}
