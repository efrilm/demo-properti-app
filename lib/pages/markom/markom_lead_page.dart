import 'package:flutter/material.dart';
import 'package:properti1/pages/markom/markom_detail_booking_page.dart';
import 'package:properti1/pages/markom/markom_detail_follow_up_page.dart';
import 'package:properti1/pages/markom/markom_detail_new_page.dart';
import 'package:properti1/pages/markom/markom_detail_reservation_page.dart';
import 'package:properti1/widgets/card_lead.dart';

import '../../thema.dart';

class MarkomLeadPage extends StatelessWidget {
  const MarkomLeadPage({Key? key}) : super(key: key);

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
          "Lead",
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
      Widget newLead() {
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
                          builder: (context) => MarkomDetailNew()));
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
                          builder: (context) => MarkomDetailNew()));
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
                          builder: (context) => MarkomDetailNew()));
                },
              ),
            ],
          ),
        );
      }

      Widget followUp() {
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
                          builder: (context) => MarkomDetailFollowUp()));
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
                      builder: (context) => MarkomDetailFollowUp(),
                    ),
                  );
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
                      builder: (context) => MarkomDetailFollowUp(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }

      Widget reservasi() {
        return Container(
          child: ListView(
            padding: EdgeInsets.only(
              top: 20,
            ),
            children: [
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                isHome: true,
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarkomDetailReservasiPage(),
                    ),
                  );
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                isHome: true,
                no_home: "B-11",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarkomDetailReservasiPage(),
                    ),
                  );
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                isHome: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarkomDetailReservasiPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }

      Widget booking() {
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
                isHome: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarkomDetailBookingPage(),
                    ),
                  );
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                isHome: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarkomDetailBookingPage(),
                    ),
                  );
                },
              ),
              CardLead(
                name: "Kezia Ananda",
                date: "16 January 2022",
                no_home: "B-11",
                isHome: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MarkomDetailBookingPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      }

      return DefaultTabController(
        length: 4,
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
                  isScrollable: true,
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
                      text: 'New',
                    ),
                    Tab(
                      text: 'Follow Up',
                    ),
                    Tab(
                      text: 'Reservasi',
                    ),
                    Tab(
                      text: 'Booking',
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                child: TabBarView(
                  children: [
                    // NOW: NEW
                    newLead(),
                    // NOTE: FOLLOW UP
                    followUp(),
                    // NOTE:RESERVATION
                    reservasi(),
                    // NOTE: BOOKING
                    booking(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-lead');
        },
        backgroundColor: kRedColor,
        child: Icon(
          Icons.add_outlined,
          size: 22,
          color: kWhiteColor,
        ),
      ),
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
