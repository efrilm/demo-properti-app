import 'package:flutter/material.dart';
import 'package:properti1/pages/antrian_sales.dart';
import 'package:properti1/pages/detail_sales.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/card_antrian_sales.dart';
import 'package:properti1/widgets/card_count.dart';
import 'package:properti1/widgets/card_features.dart';
import 'package:properti1/widgets/card_new_lead.dart';
import 'package:properti1/widgets/header_dashboard.dart';
import 'package:properti1/widgets/page_title.dart';

class MarkomDashboardPage extends StatelessWidget {
  const MarkomDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return HeaderDashboard(
        name: 'Grace Alicia',
        imageUrl: 'assets/profil.jpg',
        level: 'Markom',
      );
    }

    Widget cardCount() {
      return CardCount(
        numberOfDaily: "10",
        numberOfWeekly: "40",
        numberOfMonthy: "118",
      );
    }

    Widget feature() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardFeatures(
              icon: Icons.pan_tool_outlined,
              title: "Absen",
              onTap: () {
                Navigator.pushNamed(context, '/add-absen');
              },
            ),
            CardFeatures(
              icon: Icons.group_work_outlined,
              title: "Pamit",
              onTap: () {
                Navigator.pushNamed(context, '/add-pamit');
              },
            ),
            CardFeatures(
              icon: Icons.add_box_outlined,
              title: "Lead Sales",
              onTap: () {},
            ),
          ],
        ),
      );
    }

    Widget antrianSales() {
      Widget titlePage() {
        return PageTitle(
          title: "Antrian Sales",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AntrianSales(),
              ),
            );
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            titlePage(),
            CardAntrianSales(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailSales()));
              },
              name: "Cristian Jimbran",
              imageUrl: "assets/sales1.jpg",
              date: "13 Januari 2022, 18:10",
              no: "1",
            ),
            CardAntrianSales(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailSales()));
              },
              name: "Alexa Munayah",
              imageUrl: "assets/sales2.jpg",
              date: "14 Januari 2022, 01:10",
              no: "2",
            ),
            CardAntrianSales(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailSales()));
              },
              name: "Hana Hanifah",
              imageUrl: "assets/sales3.jpg",
              date: "14 Januari 2022, 13:10",
              no: "3",
            ),
          ],
        ),
      );
    }

    Widget newLead() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          children: [
            PageTitle(
              title: "Lead Terbaru",
              onTap: () {},
              isView: false,
            ),
            CardNewLead(
              name: "Roni Sahab",
              date: "14 Januari 2022, 16:10",
              onTap: () {},
              status: "New",
            ),
            CardNewLead(
              name: "Jeha Anais",
              date: "14 Januari 2022, 16:10",
              onTap: () {},
              status: "New",
            ),
            CardNewLead(
              name: "Ambal",
              date: "14 Januari 2022, 16:10",
              onTap: () {},
              status: "Follow Up",
              statusColor: kBrownColor,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            cardCount(),
            feature(),
            antrianSales(),
            newLead(),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
