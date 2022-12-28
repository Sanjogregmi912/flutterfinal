import 'package:downwork/screens/DashboardScreen.dart';
import 'package:downwork/screens/LoginScreen.dart';
import 'package:downwork/screens/RegisterScreen.dart';
import 'package:downwork/screens/mobile/Registermobile.dart';
import 'package:downwork/screens/widgets/theme_data.dart';

import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getapplicationTheme(),
      initialRoute: '/',
      routes: {
        "/": (context) => const LoginScreen(),
        "/register" : (context) => const RegisterScreen(),
        "/dashboard" :(context) => DashboardScreen(),
      
      },
    );
  }
}