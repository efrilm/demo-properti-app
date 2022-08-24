import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class CardInformationFee extends StatelessWidget {
  final String feeReservasi;
  final String? feeBooking;
  final String? total;
  const CardInformationFee({
    Key? key,
    required this.feeReservasi,
    this.feeBooking,
    this.total,
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
            height: 70,
          ),
          Container(
            width: 265,
            margin: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              children: [
                HeaderCard(text: "INFORMASI BIAYA"),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reservasi",
                      style: darkLightTextStyle,
                    ),
                    Text(
                      "IDR " + feeReservasi,
                      style: redTextStyle,
                    ),
                  ],
                ),
                feeBooking != null
                    ? Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Booking",
                                style: darkLightTextStyle,
                              ),
                              Text(
                                "IDR " + feeBooking!,
                                style: redTextStyle,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                total != null
                    ? Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: darkLightTextStyle,
                              ),
                              Text(
                                "IDR " + total!,
                                style: brownTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
