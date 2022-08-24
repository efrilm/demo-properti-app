import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/card_information_date.dart';
import 'package:properti1/widgets/card_information_fee.dart';
import 'package:properti1/widgets/card_information_home.dart';
import 'package:properti1/widgets/card_information_lead.dart';
import 'package:properti1/widgets/card_information_payment.dart';
import 'package:properti1/widgets/card_information_user.dart';
import 'package:properti1/widgets/card_note.dart';
import 'package:properti1/widgets/custom_appbar.dart';

class MarkomDetailSoldPage extends StatelessWidget {
  const MarkomDetailSoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Detail",
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
        feeReservasi: "10.000.000",
        feeBooking: "5.000.000.",
        total: "15.000.000",
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
        dateBooking: "18 Januari 2022 18:09:43",
        dateSold: "18 Januari 2022 18:09:43",
      );
    }

    Widget informationPayment() {
      return CardInformationPayment(
        paymentMethod: "KPR",
        price: "IDR 1.950.000.000",
        discountPrice: "IDR 0",
        downpayment: "IDR 450.000.000",
        discountDownpayment: "IDR 50.000.000",
        downpaymentPaid: "IDR 400.000.000",
        subtotal: "IDR 1.555.000.000",
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
            informationPayment(),
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
