import 'package:flutter/material.dart';
import 'package:properti1/widgets/divider_vertical.dart';

import '../thema.dart';

class CardNewLead extends StatelessWidget {
  final String name;
  final String date;
  final Color? statusColor;
  final Function() onTap;
  final String status;
  const CardNewLead({
    Key? key,
    required this.name,
    required this.date,
    this.statusColor,
    required this.onTap,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            DividerVertical(
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: darkLightTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 2,
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
            Container(
              child: Text(
                status,
                style: redTextStyle.copyWith(
                  color: statusColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
