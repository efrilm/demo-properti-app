import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/divider_vertical.dart';

class CardLead extends StatelessWidget {
  final String name;
  final String date;
  final String no_home;
  final String payment_type;
  final bool isPayment;
  final bool isHome;
  final Function() onTap;

  const CardLead({
    Key? key,
    required this.name,
    required this.date,
    this.no_home = "",
    required this.onTap,
    this.isHome = false,
    this.payment_type = "",
    this.isPayment = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 12,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(radius8),
          boxShadow: [
            shadow,
          ],
        ),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DividerVertical(),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: darkLightTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    isPayment == true
                        ? SizedBox(
                            height: 6,
                          )
                        : SizedBox(),
                    isPayment == true
                        ? Text(
                            payment_type,
                            style: greyTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          )
                        : Container(),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      date,
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            isHome == true
                ? Container(
                    width: 33,
                    height: 23,
                    margin: EdgeInsets.only(
                      right: 12,
                    ),
                    decoration: BoxDecoration(
                      color: kBrownColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        no_home,
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
