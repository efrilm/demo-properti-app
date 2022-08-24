import 'package:flutter/material.dart';

import '../thema.dart';

class CardAntrianSales extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String date;
  final String no;
  final Function() onTap; 

  const CardAntrianSales({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.date,
    required this.no,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(radius8),
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: darkLightTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    date,
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 30,
              height: 40,
              decoration: BoxDecoration(
                color: kRedColor,
                borderRadius: BorderRadius.circular(radius8),
              ),
              child: Center(
                child: Text(
                  no,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
