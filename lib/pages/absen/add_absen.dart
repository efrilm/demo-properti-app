import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/card_pick_image.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/custom_textformfield.dart';

class AddAbsen extends StatelessWidget {
  const AddAbsen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(text: "Absen");
    }

    Widget cardPickImage() {
      return CardPickImage(
        onTap: () {},
      );
    }

    Widget noteTextField() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: CustomTextFormField(
          hint: 'Keterangan',
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: RedButton(
          title: "Kirim",
          onTap: () {},
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header(),
            cardPickImage(),
            noteTextField(),
            button(),
          ],
        ),
      ),
    );
  }
}
