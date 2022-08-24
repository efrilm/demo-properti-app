import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class CardCount extends StatelessWidget {
  final String numberOfDaily;
  final String numberOfWeekly;
  final String numberOfMonthy;
  const CardCount({
    Key? key,
    required this.numberOfDaily,
    required this.numberOfWeekly,
    required this.numberOfMonthy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
        left: defaultMargin,
        right: defaultMargin,
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(radius8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 10,
            color: kDarkLightColor.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "110",
                style: redTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'Harian',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Container(
            width: 2,
            height: 30,
            decoration: BoxDecoration(
              color: kGreyLightColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "110",
                style: redTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'Mingguan',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Container(
            width: 2,
            height: 30,
            decoration: BoxDecoration(
              color: kGreyLightColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "110",
                style: redTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'Harian',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
