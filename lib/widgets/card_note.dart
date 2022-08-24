import 'package:flutter/material.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

import '../thema.dart';

class CardNote extends StatelessWidget {
  final String text;

  const CardNote({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      margin: EdgeInsets.only(
        top: 20,
        right: defaultMargin,
        left: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(radius8),
        boxShadow: [
          shadow,
        ],
      ),
      child: Row(
        children: [
          DividerVertical(
            height: 60,
          ),
          Container(
            width: 285,
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderCard(
                  text: "KETERANGAN",
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  text,
                  style: darkLightTextStyle,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
