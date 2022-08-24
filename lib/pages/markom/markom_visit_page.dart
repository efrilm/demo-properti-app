import 'package:flutter/material.dart';
import 'package:properti1/pages/markom/markom_detail_already_visited_page.dart';
import 'package:properti1/pages/markom/markom_detail_wiil_visited_page.dart';
import 'package:properti1/pages/markom/markom_detail_follow_up_page.dart';
import 'package:properti1/pages/markom/markom_detail_new_page.dart';
import 'package:properti1/widgets/card_lead.dart';

import '../../thema.dart';

class MarkomVisitPage extends StatelessWidget {
  const MarkomVisitPage({Key? key}) : super(key: key);

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
          "Berkunjung",
          style: redTextStyle.copyWith(
            fontSize: 26,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget serach() {
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

    Widget tabBar() {
      Widget akanDatang() {
        return Container(
          child: ListView(
            padding: EdgeInsets.only(
              top: 20,
            ),
            children: [
              CardLead(
                name: "Tiara Angelia Frisca",
                date: "18 January 2022",
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MarkomWillVisited()));
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MarkomWillVisited()));
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MarkomWillVisited()));
                },
              ),
            ],
          ),
        );
      }

      Widget sudahDatang() {
        return Container(
          child: ListView(
            padding: EdgeInsets.only(
              top: 20,
            ),
            children: [
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MarkomDetailAlreadyVisited()));
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MarkomDetailAlreadyVisited()));
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MarkomDetailAlreadyVisited()));
                },
              ),
            ],
          ),
        );
      }

      return DefaultTabController(
        length: 2,
        child: Container(
          margin: EdgeInsets.only(
              top: 30, left: defaultMargin, right: defaultMargin),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(radius8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 2),
                      color: kDarkLightColor.withOpacity(0.1),
                    )
                  ],
                ),
                child: TabBar(
                  indicatorColor: kRedColor,
                  labelStyle: darkLightTextStyle,
                  unselectedLabelColor: kGreyColor,
                  isScrollable: false,
                  indicator: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        kRedColor,
                        kBrownColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(radius8),
                    color: kWhiteColor,
                  ),
                  tabs: [
                    Tab(
                      text: 'Akan Datang',
                    ),
                    Tab(
                      text: 'Sudah Datang',
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                child: TabBarView(
                  children: [
                    akanDatang(),
                    sudahDatang(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          serach(),
          tabBar(),
        ],
      ),
    );
  }
}
