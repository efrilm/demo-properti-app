import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class CardInformationPayment extends StatelessWidget {
  final String paymentMethod;
  final String price;
  final String discountPrice;
  final String downpayment;
  final String discountDownpayment;
  final String downpaymentPaid;
  final String subtotal;

  const CardInformationPayment({
    Key? key,
    required this.paymentMethod,
    required this.price,
    required this.discountPrice,
    required this.downpayment,
    required this.discountDownpayment,
    required this.downpaymentPaid,
    required this.subtotal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 20,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [shadow],
        borderRadius: BorderRadius.circular(radius8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              DividerVertical(
                height: 150,
              ),
              Container(
                width: 285,
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  children: [
                    HeaderCard(text: "INFORMASI PEMBAYARAN"),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jenis Pembayaran',
                          style: darkLightTextStyle,
                        ),
                        Text(
                          paymentMethod,
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
                          'Harga',
                          style: darkLightTextStyle,
                        ),
                        Text(
                          price,
                          style: brownTextStyle.copyWith(
                            fontWeight: semiBold,
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
                          'Diskon Harga',
                          style: darkLightTextStyle,
                        ),
                        Text(
                          discountPrice,
                          style: redTextStyle,
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
                          'Uang Muka',
                          style: darkLightTextStyle,
                        ),
                        Text(
                          downpayment,
                          style: redTextStyle,
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
                          'Diskon Uang Muka',
                          style: darkLightTextStyle,
                        ),
                        Text(
                          downpayment,
                          style: redTextStyle,
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
                          'Uang Muka di Bayar',
                          style: darkLightTextStyle,
                        ),
                        Text(
                          downpaymentPaid,
                          style: redTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: kRedColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 20,
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: darkLightTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  subtotal,
                  style: brownTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
