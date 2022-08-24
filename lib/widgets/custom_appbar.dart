  import 'package:flutter/material.dart';

import '../thema.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final Widget? action;

  const CustomAppBar({
    Key? key,
    required this.text,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: kRedColor,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 18,
                color: kRedColor,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              text,
              style: redTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
          Container(
            child: action,
          ),
        ],
      ),
    );
  }
}
