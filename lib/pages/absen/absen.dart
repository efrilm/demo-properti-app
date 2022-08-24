import 'package:flutter/material.dart';
import 'package:properti1/widgets/card_absen.dart';
import 'package:properti1/widgets/custom_appbar.dart';

import '../../thema.dart';

class AbsenPage extends StatelessWidget {
  const AbsenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Absensi",
      );
    }

    Widget tabBar() {
      Widget today() {
        return ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            CardAbsen(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/airplane-84a39.appspot.com/o/profil.jpg?alt=media&token=42f510f1-8de4-4a04-a848-21335a52b56a",
              name: 'Grace Indri',
              note: "Pagi",
              dateTime: "16 januari 2022 16:00:34",
              status: "Absen",
            ),
            CardAbsen(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/airplane-84a39.appspot.com/o/profil.jpg?alt=media&token=42f510f1-8de4-4a04-a848-21335a52b56a",
              name: 'Grace Indri',
              note: "Pagi",
              dateTime: "16 januari 2022 16:00:34",
              status: "Absen",
            ),
            CardAbsen(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/airplane-84a39.appspot.com/o/profil.jpg?alt=media&token=42f510f1-8de4-4a04-a848-21335a52b56a",
              name: 'Grace Indri',
              note: "Pagi",
              dateTime: "16 januari 2022 16:00:34",
              status: "Absen",
            ),
          ],
        );
      }

      Widget all() {
        return Container();
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
                      text: 'Hari ini',
                    ),
                    Tab(
                      text: 'Semua',
                    ),
                  ],
                ),
              ),
              Container(
                height: double.maxFinite,
                child: TabBarView(
                  children: [
                    // NOW: TODAY
                    today(),
                    // NOTE: all
                    all(),
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
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            header(),
            tabBar(),
          ],
        ),
      ),
    );
  }
}
