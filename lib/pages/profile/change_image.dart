import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/card_pick_image.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/header_card.dart';

class ChangeImage extends StatelessWidget {
  const ChangeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(text: "Ganti Gambar");
    }

    Widget cardPickImage() {
      return CardPickImage(
        onTap: () {},
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 40,
        ),
        child: RedButton(
          title: "Ganti",
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
            button(),
          ],
        ),
      ),
    );
  }
}
