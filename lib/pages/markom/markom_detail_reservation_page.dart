import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/card_information_date.dart';
import 'package:properti1/widgets/card_information_fee.dart';
import 'package:properti1/widgets/card_information_home.dart';
import 'package:properti1/widgets/card_information_lead.dart';
import 'package:properti1/widgets/card_information_user.dart';
import 'package:properti1/widgets/card_note.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class MarkomDetailReservasiPage extends StatelessWidget {
  const MarkomDetailReservasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Detail Reservasi",
      );
    }

    Widget informasiLead() {
      return CardInformationLead(
        name: "Helium Xaka",
        no_whatsapp: "628 9909 7788",
        source: "Facebook",
        date: "18 Januari 2022, 16:16:00",
      );
    }

    Widget note() {
      return CardNote(text: "Reservasi");
    }

    Widget informationHome() {
      return CardInformationHome(
        noRumah: "B1-10",
        tipeRumah: "80/105",
      );
    }

    Widget informationFee() {
      return CardInformationFee(
        feeReservasi: "Rp. 10.000.000",
      );
    }

    Widget informationUser() {
      return CardInformationUser(
        nameSales: "Rodri",
        nameMarkom: "Evelyn",
      );
    }

    Widget informationDate() {
      return CardInformationDate(
        dateAdd: "18 Januari 2022 18:00:54 ",
        dateFollowUp: "18 Januari 2022 18:00:54",
        dateWillVisited: "18 Januari 2022 18:00:54",
        dateAlreadyVisited: "18 Januari 2022 18:00:54",
        dateReservation: "18 Januari 2022 18:00:54",
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: RedButton(
          title: "Tracking",
          onTap: () {},
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            informasiLead(),
            note(),
            informationHome(),
            informationFee(),
            informationUser(),
            informationDate(),
            button(),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
