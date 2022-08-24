import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class CardNotification extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onTap;

  const CardNotification({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(radius8),
          boxShadow: [shadow],
        ),
        child: Row(
          children: [
            Container(
              width: 35,
              height: 35,
                decoration: BoxDecoration(
                color: kRedColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(radius8),
              ),
              child: Icon(
                Icons.notifications,
                color: kWhiteColor,
                size: 20,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: darkLightTextStyle,
                  ),
                  Text(
                    subtitle,
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kRedColor,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
