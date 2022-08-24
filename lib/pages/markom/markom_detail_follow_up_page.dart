import 'package:flutter/material.dart';
import 'package:properti1/pages/markom/markom_edit_lead.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_outlined.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/card_icon.dart';
import 'package:properti1/widgets/card_information_date.dart';
import 'package:properti1/widgets/card_information_lead.dart';
import 'package:properti1/widgets/card_information_user.dart';
import 'package:properti1/widgets/card_note.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/dialog_delete.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class MarkomDetailFollowUp extends StatelessWidget {
  const MarkomDetailFollowUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Detail Follow Up",
      );
    }

    Widget informationLead() {
      return CardInformationLead(
        name: "Kezia Ananda",
        no_whatsapp: "628 1124 9867",
        source: "Facebbok",
        date: "16 January 2022, 16:18:44",
      );
    }

    Widget note() {
      return CardNote(text: "Bantu Fu");
    }

    Widget informationUser() {
      return CardInformationUser(
        nameSales: "Yohanes",
        nameMarkom: "Bruno Casmir",
      );
    }

    Widget informationDate() {
      return CardInformationDate(
        dateAdd: "16 Januari 2022, 16:18:44",
        dateFollowUp: "16 Januari 2022, 16:18:44",
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            RedButton(
              title: "Tracking",
              onTap: () {},
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
            informationLead(),
            note(),
            informationUser(),
            informationDate(),
            button(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
