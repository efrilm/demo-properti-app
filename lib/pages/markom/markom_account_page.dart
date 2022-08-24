import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/card_profile.dart';
import 'package:properti1/widgets/card_setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MarkomAccountPage extends StatefulWidget {
  const MarkomAccountPage({Key? key}) : super(key: key);

  @override
  _MarkomAccountPageState createState() => _MarkomAccountPageState();
}

class _MarkomAccountPageState extends State<MarkomAccountPage> {
  var isLoading = false;

  signOut() async {
    setState(() {
      isLoading = true;
    });
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.remove("value");
      pref.remove("idUser");
      pref.remove("username");
      pref.remove("name_user");
      pref.remove("level");
      pref.remove("active");
      pref.remove("createDate");
      pref.remove("updateDate");
      pref.remove("idMarkom");
      pref.remove("images");
      pref.remove("token");
      pref.commit();
    });
    Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          "Profile",
          style: redTextStyle.copyWith(
            fontSize: 26,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget profile() {
      return CardProfile(
          name: "Grace Alicia",
          email: "gracealicia0@gmail.com",
          imageUrl: "assets/profil.jpg");
    }

    Widget divider() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        height: 6,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kGreyLightColor,
        ),
      );
    }

    Widget accountSetting() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PENGATURAN ACCOUNT",
              style: redTextStyle.copyWith(),
            ),
            CardSetting(
              icon: Icons.person_outline,
              title: "Profil",
              onTap: () {
                Navigator.pushNamed(context, '/profile-page');
              },
            ),
            CardSetting(
              icon: Icons.lock_outlined,
              title: "Ganti Kata Sandi",
              onTap: () {
                Navigator.pushNamed(context, '/change-password');
              },
            ),
          ],
        ),
      );
    }

    Widget general() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "UMUM",
              style: redTextStyle.copyWith(),
            ),
            CardSetting(
              icon: Icons.label_outline,
              title: "Product Knowladge ",
              onTap: () {},
            ),
            CardSetting(
              icon: Icons.home_work_outlined,
              title: "Master stock",
              onTap: () {
                Navigator.pushNamed(context, "/master-stock");
              },
            ),
            CardSetting(
              icon: Icons.assignment_outlined,
              title: "Laporan Lead",
              onTap: () {},
            ),
            CardSetting(
              icon: Icons.view_list_sharp,
              title: "Daftar Tamu",
              onTap: () {},
            ),
            CardSetting(
              icon: Icons.assignment_ind_outlined,
              title: "Daftar Sales",
              onTap: () {},
            ),
            CardSetting(
              icon: Icons.pan_tool_outlined,
              title: "Daftar Absen",
              onTap: () {
                Navigator.pushNamed(context, "/absen-page");
              },
            ),
          ],
        ),
      );
    }

    Widget advanced() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LANJUTAN",
              style: redTextStyle.copyWith(),
            ),
            CardSetting(
              icon: Icons.policy,
              title: "Kebijakan Pribadi",
              onTap: () {},
            ),
            CardSetting(
              icon: Icons.privacy_tip,
              title: "Syarat dan Ketentuan",
              onTap: () {},
            ),
          ],
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
          title: "Keluar",
          onTap: () {
            signOut();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Keluar!',
                  style: whiteTextStyle,
                ),
                backgroundColor: Colors.red,
                duration: const Duration(milliseconds: 1500),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, // Inner padding for SnackBar content.
                ),
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            profile(),
            divider(),
            accountSetting(),
            general(),
            advanced(),
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
