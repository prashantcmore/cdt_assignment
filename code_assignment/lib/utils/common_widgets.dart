import 'package:flutter/material.dart';

Widget iconButton(
  Function function,
  String? image,
) {
  return IconButton(
    onPressed: function(),
    icon: Image.asset('$image'),
  );
}

Widget heightSpacer(double height) {
  return SizedBox(
    height: height,
  );
}

Widget widthSacer(double width) {
  return SizedBox(
    width: width,
  );
}
