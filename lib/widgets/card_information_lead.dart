import 'package:properti1/thema.dart';
import 'package:flutter/material.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class CardInformationLead extends StatelessWidget {
  final String name;
  final String no_whatsapp;
  final String source;
  final String date;
  const CardInformationLead({
    Key? key,
    required this.name,
    required this.no_whatsapp,
    required this.source,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
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
            height: 120,
          ),
          Container(
            width: 285,
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderCard(
                  text: "INFORMASI LEAD",
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nama",
                      style: darkLightTextStyle.copyWith(),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Text(
                        name,
                        style: darkLightTextStyle.copyWith(),
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
                      "No. Whatsapp",
                      style: darkLightTextStyle.copyWith(),
                    ),
                    Text(
                      no_whatsapp,
                      style: darkLightTextStyle.copyWith(),
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
                      "Sumber",
                      style: darkLightTextStyle.copyWith(),
                    ),
                    Text(
                      source,
                      style: darkLightTextStyle.copyWith(),
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
                      "Tanggal",
                      style: darkLightTextStyle.copyWith(),
                    ),
                    Text(
                      date,
                      style: darkLightTextStyle.copyWith(),
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
