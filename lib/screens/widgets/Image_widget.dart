import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget image({
  required String filepath,
  double? height,
  required double width,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: SvgPicture.asset(filepath),
  );
}
