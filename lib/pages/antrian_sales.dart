import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/card_antrian_sales.dart';
import 'package:properti1/widgets/custom_appbar.dart';

class AntrianSales extends StatelessWidget {
  const AntrianSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(text: "Antrian Sales");
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                children: [
                  CardAntrianSales(
                    onTap: () {},
                    name: "Cristian Jimbran",
                    imageUrl: "assets/sales1.jpg",
                    date: "13 Januari 2022, 18:10",
                    no: "1",
                  ),
                  CardAntrianSales(
                    onTap: () {},
                    name: "Alexa Munayah",
                    imageUrl: "assets/sales2.jpg",
                    date: "14 Januari 2022, 01:10",
                    no: "2",
                  ),
                  CardAntrianSales(
                    onTap: () {},
                    name: "Hana Hanifah",
                    imageUrl: "assets/sales3.jpg",
                    date: "14 Januari 2022, 13:10",
                    no: "3",
                  ),
                  CardAntrianSales(
                    onTap: () {},
                    name: "Hana Hanifah",
                    imageUrl: "assets/sales4.jpg",
                    date: "14 Januari 2022, 13:10",
                    no: "4",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
