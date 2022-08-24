import 'package:flutter/material.dart';
import 'package:properti1/widgets/card_information_date.dart';
import 'package:properti1/widgets/card_information_lead.dart';
import 'package:properti1/widgets/card_information_user.dart';
import 'package:properti1/widgets/card_note.dart';
import 'package:properti1/widgets/custom_appbar.dart';

class MarkomWillVisited extends StatelessWidget {
  const MarkomWillVisited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Detail Akan Datang",
      );
    }

    Widget informationLead() {
      return CardInformationLead(
        name: "Tiara Angelia Frisca",
        no_whatsapp: "628 1289 7823",
        source: "Instagram",
        date: "18 Januari 2022",
      );
    }

    Widget note() {
      return CardNote(
        text: "She Will Come on Sunday",
      );
    }

    Widget informationUser() {
      return CardInformationUser(
        nameSales: "Bunga Indah",
        nameMarkom: "Patrick La Grande",
      );
    }

    Widget informationDate() {
      return CardInformationDate(
        dateAdd: "14 Januari 2022, 13:19:29",
        dateFollowUp: "14 Januari 2022, 13:22:02",
        dateWillVisited: "16 January 2022, 09:18:02",
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            informationLead(),
            note(),
            informationUser(),
            informationDate(),
          ],
        ),
      ),
    );
  }
}
