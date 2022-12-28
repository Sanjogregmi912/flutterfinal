import 'package:downwork/screens/widgets/Buttons.dart';
import 'package:downwork/screens/widgets/Media_Query_function.dart';
import 'package:downwork/screens/widgets/Text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      body: SafeArea(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: isPortrait ? true : false,
              child: SizedBox(
                height: displayHeight(context) / 2.6,
                width: displayWidth(context),
                child: Expanded(
                  child: SvgPicture.asset("assets/svg/login1.svg"),
                ),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: isPortrait
                    ? displayHeight(context) / 1.8
                    : displayHeight(context) - 32,
                width: displayWidth(context),
                child: Column(
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
                      width: displayWidth(context) - 200,
                      child: elevetedButton(
                          label: 'Login ',
                          context: context,
                          route: "/dashboard"),
                    ),
                    SizedBox(
                      width: displayWidth(context) - 200,
                      child: elevetedButton(
                          label: 'Register ',
                          context: context,
                          route: "/register"),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
