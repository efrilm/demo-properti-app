import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class CardInformationDate extends StatelessWidget {
  final String? dateAdd;
  final String? dateFollowUp;
  final String? dateWillVisited;
  final String? dateAlreadyVisited;
  final String? dateReservation;
  final String? dateBooking;
  final String? dateSold;
  const CardInformationDate({
    Key? key,
    this.dateAdd,
    this.dateFollowUp,
    this.dateWillVisited,
    this.dateAlreadyVisited,
    this.dateReservation,
    this.dateBooking,
    this.dateSold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 20,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(radius8),
        boxShadow: [shadow],
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        children: [
          DividerVertical(
            height: 120,
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
                  text: "INFORMASI TANGGAL",
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Masuk",
                      style: darkLightTextStyle,
                    ),
                    Text(
                      dateAdd!,
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
                      "Follow Up",
                      style: darkLightTextStyle,
                    ),
                    Text(
                      dateFollowUp!,
                      style: darkLightTextStyle,
                    ),
                  ],
                ),
                dateWillVisited != null
                    ? Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Akan Visit",
                                style: darkLightTextStyle,
                              ),
                              Text(
                                dateWillVisited!,
                                style: darkLightTextStyle,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                dateAlreadyVisited != null
                    ? Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sudah Visit",
                                style: darkLightTextStyle,
                              ),
                              Text(
                                dateAlreadyVisited!,
                                style: darkLightTextStyle,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                dateReservation != null
                    ? Column(
                        children: [
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
                                dateReservation!,
                                style: darkLightTextStyle,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                dateBooking != null
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
                                dateBooking!,
                                style: darkLightTextStyle,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Container(),
                dateSold != null
                    ? Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Penjualan",
                                style: darkLightTextStyle,
                              ),
                              Text(
                                dateSold!,
                                style: darkLightTextStyle,
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
