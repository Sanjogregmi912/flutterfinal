import 'package:downwork/screens/mobile/Registermobile.dart';
import 'package:downwork/screens/tablet/RegisterTablet.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return const RegisterTablet();
          } else {
            return const RegisterMobile();
          }
        },
      ),
    );
  }
}
