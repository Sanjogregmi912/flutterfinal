import 'package:downwork/screens/widgets/Buttons.dart';
import 'package:downwork/screens/widgets/Media_Query_function.dart';
import 'package:downwork/screens/widgets/Text_widget.dart';
import 'package:flutter/material.dart';

class RegisterTablet extends StatefulWidget {
  const RegisterTablet({super.key});

  @override
  State<RegisterTablet> createState() => _RegisterTabletState();
}

class _RegisterTabletState extends State<RegisterTablet> {
  final dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register "),
      ),
      body: SafeArea(
          child: Row(
        children: [
          SizedBox(
            height: displayHeight(context),
            width: displayWidth(context) / 4,
          ),
          SizedBox(
            height: displayHeight(context),
            width: displayWidth(context) / 2,
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                  children: [
                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                          width: displayWidth(context),
                          child: const Text(
                            "Firstname : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    textfield(name: "Enter first name ", gap: 5.0),
                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                          width: displayWidth(context),
                          child: const Text(
                            "Lastname : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    textfield(name: "Enter last  name ", gap: 5.0),
                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                          width: displayWidth(context),
                          child: const Text(
                            "Email address : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    textfield(name: "Enter Email  name ", gap: 5.0),
                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                          width: displayWidth(context),
                          child: const Text(
                            "phone number : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    textfield(name: "Enter Phone number ", gap: 5.0),
                    //
                    Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 8),
                      child: SizedBox(
                          width: displayWidth(context),
                          child: const Text(
                            "Date of Birth : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),

                    datepicker(context: context, controller: dateController),
                    //
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
                    //
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
                          label: 'Register ',
                          context: context,
                          route: "/register"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: displayHeight(context),
            width: displayWidth(context) / 4,
          ),
        ],
      )),
    );
  }
}
