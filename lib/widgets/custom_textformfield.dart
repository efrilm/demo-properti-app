import 'package:flutter/material.dart';

import '../thema.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final int lines;
  const CustomTextFormField(
      {Key? key, required this.hint, this.obscureText = false, this.lines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: kGreyColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(radius8),
      ),
      child: TextFormField(
        style: darkLightTextStyle,
        // controller: passwordController,
        obscureText: obscureText,
        maxLines: lines,
        decoration: InputDecoration(
          hintStyle: greyTextStyle,
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
