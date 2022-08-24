import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class CardInformationUser extends StatelessWidget {
  final String nameSales;
  final String nameMarkom;
  const CardInformationUser({
    Key? key,
    required this.nameSales,
    required this.nameMarkom,
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
                  text: "INFORMATION PENGGUNA",
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sales",
                      style: darkLightTextStyle,
                    ),
                    Expanded(
                      child: Text(
                        nameSales,
                        style: brownTextStyle,
                        textAlign: TextAlign.right,
                      ),
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
                      "Markom",
                      style: darkLightTextStyle,
                    ),
                    Expanded(
                      child: Text(
                        nameMarkom,
                        style: brownTextStyle,
                        textAlign: TextAlign.right,
                      ),
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
