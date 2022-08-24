import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class ButtonOutlined extends StatelessWidget {
  final String text;
  final double width;
  final Function() onTap;
  const ButtonOutlined(
      {Key? key,
      required this.text,
      this.width = double.infinity,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(radius8),
        border: Border.all(
          width: 2,
          color: kRedColor,
        ),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: redTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
