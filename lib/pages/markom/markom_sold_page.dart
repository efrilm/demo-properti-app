import 'package:flutter/material.dart';
import 'package:properti1/pages/markom/markom_detail_booking_page.dart';
import 'package:properti1/pages/markom/markom_detail_follow_up_page.dart';
import 'package:properti1/pages/markom/markom_detail_new_page.dart';
import 'package:properti1/pages/markom/markom_detail_reservation_page.dart';
import 'package:properti1/pages/markom/markom_detail_sold_page.dart';
import 'package:properti1/widgets/card_lead.dart';

import '../../thema.dart';

class MarkomSoldPage extends StatelessWidget {
  const MarkomSoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          "Penjualan",
          style: redTextStyle.copyWith(
            fontSize: 26,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget search() {
      return Container(
        height: 45,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            shadow,
          ],
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search",
              style: greyTextStyle,
            ),
            Icon(
              Icons.search,
              size: 24,
              color: kGreyColor,
            ),
          ],
        ),
      );
    }

    Widget listSold() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            CardLead(
              name: "Kezia Ananda",
              date: "16 January 2022",
              isHome: true,
              no_home: "B-11",
              isPayment: true,
              payment_type: "KPR",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MarkomDetailSoldPage(),
                  ),
                );
              },
            ),
            CardLead(
              name: "Kezia Ananda",
              date: "16 January 2022",
              isHome: true,
              no_home: "B-11",
              isPayment: true,
              payment_type: "KPR",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MarkomDetailSoldPage(),
                  ),
                );
              },
            ),
            CardLead(
              name: "Kezia Ananda",
              date: "16 January 2022",
              no_home: "B-11",
              isHome: true,
              isPayment: true,
              payment_type: "KPR",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MarkomDetailSoldPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          search(),
          listSold(),
        ],
      ),
    );
  }
}
