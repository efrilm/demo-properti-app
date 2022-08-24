import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/card_lead.dart';
import 'package:properti1/widgets/custom_appbar.dart';

class DetailSales extends StatelessWidget {
  const DetailSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: 'Detail Sales',
      );
    }

    Widget profil() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius8),
                color: kGreyColor,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/sales1.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Christian Jimbran",
              style: darkLightTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget cardCount() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(radius8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 10,
              color: kDarkLightColor.withOpacity(0.1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "5",
                  style: redTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Reservasi',
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Container(
              width: 2,
              height: 30,
              decoration: BoxDecoration(
                color: kGreyLightColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "12",
                  style: redTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Booking',
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Container(
              width: 2,
              height: 30,
              decoration: BoxDecoration(
                color: kGreyLightColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "8",
                  style: redTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Sold',
                  style: greyTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget tabBar() {
      return DefaultTabController(
        length: 3,
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
                      text: 'Reservasi',
                    ),
                    Tab(
                      text: 'Booking',
                    ),
                    Tab(
                      text: 'Sold',
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                child: TabBarView(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            isHome: true,
                            no_home: "B-11",
                            onTap: () {},
                          ),
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            no_home: "B-11",
                            isHome: true,
                            onTap: () {},
                          ),
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            no_home: "B-11",
                            isHome: true,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
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
                            onTap: () {},
                          ),
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            no_home: "B-11",
                            isHome: true,
                            onTap: () {},
                          ),
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            no_home: "B-11",
                            isHome: true,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            no_home: "B-11",
                            isHome: true,
                            isPayment: true,
                            payment_type: "Cash Keras",
                            onTap: () {},
                          ),
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            no_home: "B-11",
                            isHome: true,
                            isPayment: true,
                            payment_type: "KPR",
                            onTap: () {},
                          ),
                          CardLead(
                            name: "Kezia Ananda",
                            date: "16 January 2022",
                            no_home: "B-11",
                            isHome: true,
                            isPayment: true,
                            payment_type: "Cash Bertahap",
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            profil(),
            cardCount(),
            tabBar(),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
