import 'package:flutter/material.dart';

import '../thema.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    Key? key,
    this.width = double.infinity,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: kRedColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius8),
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
