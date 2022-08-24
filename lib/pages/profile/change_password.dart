import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/custom_textformfield.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(text: "Ganti Kata Sandi");
    }

    Widget passwordTextField() {
      return Container(
          margin: EdgeInsets.only(
            top: 40,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: CustomTextFormField(hint: "Masukkan Password Baru"));
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: RedButton(
          title: 'Ganti',
          onTap: () {},
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header(),
            passwordTextField(),
            button(),
          ],
        ),
      ),
    );
  }
}
