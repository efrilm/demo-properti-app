import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class CardAbsen extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String note;
  final String dateTime;
  final String status;

  const CardAbsen({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.note,
    required this.dateTime,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(radius8),
        boxShadow: [shadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radius8),
              topRight: Radius.circular(radius8),
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) => CircularProgressIndicator(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: RichText(
              text: TextSpan(
                text: name,
                style: darkLightTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
                children: [
                  TextSpan(
                    text: "  $note",
                    style: darkLightTextStyle.copyWith(
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 4,
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dateTime,
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
                Text(
                  status,
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 100,
              height: 3,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kRedColor,
                borderRadius: BorderRadius.circular(radius8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
