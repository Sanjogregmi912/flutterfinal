import 'package:downwork/screens/widgets/Buttons.dart';
import 'package:downwork/screens/widgets/Media_Query_function.dart';
import 'package:downwork/screens/widgets/Text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTablet extends StatefulWidget {
  const LoginTablet({super.key});

  @override
  State<LoginTablet> createState() => _LoginTabletState();
}

class _LoginTabletState extends State<LoginTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: displayWidth(context) / 1.8,
              height: displayHeight(context),
              child: Expanded(
                child: Container(
                  child: SvgPicture.asset("assets/svg/login1.svg"),
                ),
              ),
            ),
            SizedBox(
              width: displayWidth(context) / 2.3,
              height: displayHeight(context),
              child: Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                            width: displayWidth(context),
                            child: const Text(
                              "Username : ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                      usernametextfield(name: 'Enter username here', gap: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SizedBox(
                            width: displayWidth(context),
                            child: const Text(
                              "Password : ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                      ),
                      passwordtextfield(
                          label: 'Enter Password here', paddingvalue: 8.0),
                      SizedBox(
                        width: displayWidth(context) - 500,
                        child: elevetedButton(
                            label: 'Login ',
                            context: context,
                            route: "/dashboard"),
                      ),
                      SizedBox(
                        height: displayHeight(context) - 700,
                      ),
                      SizedBox(
                        width: displayWidth(context) - 500,
                        child: elevetedButton(
                            label: 'Register ',
                            context: context,
                            route: "/register"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
