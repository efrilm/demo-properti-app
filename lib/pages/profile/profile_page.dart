import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/custom_textformfield.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Profil",
      );
    }

    Widget image() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/change-image');
        },
        child: Container(
          height: 200,
          width: double.infinity,
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profil.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 10,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: kRedColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(radius8),
                    ),
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      color: kWhiteColor,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget divider() {
      return Container(
        width: double.infinity,
        height: 4,
        decoration: BoxDecoration(
          color: kGreyLightColor,
        ),
      );
    }

    Widget nameTextField() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: CustomTextFormField(
          hint: 'Name',
        ),
      );
    }

    Widget usernameTextField() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: CustomTextFormField(
          hint: 'Username',
        ),
      );
    }

    Widget noTelpTextField() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: CustomTextFormField(
          hint: 'Username',
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: RedButton(
          title: "Ubah",
          onTap: () {},
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header(),
            image(),
            divider(),
            nameTextField(),
            usernameTextField(),
            noTelpTextField(),
            button(),
          ],
        ),
      ),
    );
  }
}
