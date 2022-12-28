import 'package:downwork/screens/widgets/AppColors.dart';
import 'package:flutter/material.dart';

Widget elevetedButton(
    {required String label,
    required BuildContext context,
    required String route}) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context, route);
    },
    child: Text(label),
  );
}

Widget textbutton({required String label}) {
  return TextButton(
    onPressed: () {},
    child: Text(
      label,
      style: TextStyle(color: buttoncolor),
    ),
  );
}
