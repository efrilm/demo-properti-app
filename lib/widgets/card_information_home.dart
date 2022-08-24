import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class CardInformationHome extends StatelessWidget {
  final String noRumah;
  final String tipeRumah;
  const CardInformationHome({
    Key? key,
    required this.noRumah,
    required this.tipeRumah,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: defaultMargin,
        right: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(radius8),
        boxShadow: [shadow],
      ),
      child: Row(
        children: [
          DividerVertical(
            height: 80,
          ),
          Container(
            width: 285,
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              children: [
                HeaderCard(
                  text: "INFORMASI RUMAH",
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'No. Rumah',
                      style: darkLightTextStyle,
                    ),
                    Text(
                      noRumah,
                      style: darkLightTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tipe Rumah',
                      style: darkLightTextStyle,
                    ),
                    Text(
                      tipeRumah,
                      style: darkLightTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
