import 'package:downwork/screens/mobile/Loginmobile.dart';
import 'package:downwork/screens/tablet/Logintablet.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return const LoginTablet();
          } else {
            return const MobileLogin();
          }
        },
      ),
    );
  }
}
