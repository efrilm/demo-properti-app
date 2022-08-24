import 'package:flutter/material.dart';

import '../thema.dart';

class CardFeatures extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;

  const CardFeatures({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(radius8),
              boxShadow: [
                shadow
              ],
            ),
            child: Icon(
              icon,
              color: kRedColor,
              size: 26,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: redTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
