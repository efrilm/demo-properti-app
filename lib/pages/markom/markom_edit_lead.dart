import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/custom_textformfield.dart';

class MarkomEditLead extends StatefulWidget {
  const MarkomEditLead({Key? key}) : super(key: key);

  @override
  _MarkomEditLeadState createState() => _MarkomEditLeadState();
}

class _MarkomEditLeadState extends State<MarkomEditLead> {
  var sumberSelection;

  List listSumber = ['Facebook', "Instagram"];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Ubah Lead",
      );
    }

    Widget nameTextField() {
      return CustomTextFormField(
        hint: "Nama Lengkap",
      );
    }

    Widget addressTextField() {
      return CustomTextFormField(
        hint: "Alamat",
      );
    }

    Widget noWaTextField() {
      return CustomTextFormField(hint: "No. Whatsapp");
    }

    Widget sumberDropdown() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: DropdownButtonFormField(
          hint: Text(
            "Ganti Sumber",
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          onSaved: (e) => sumberSelection,
          value: sumberSelection,
          style: darkLightTextStyle,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          items: listSumber.map((value) {
            return DropdownMenuItem(
              child: Text(
                value,
                style: darkLightTextStyle,
              ),
              value: value,
            );
          }).toList(),
          onChanged: (newvalue) {
            setState(() {
              sumberSelection = newvalue;
            });
          },
        ),
      );
    }

    Widget noteTextField() {
      return CustomTextFormField(
        hint: "Keterangan",
        lines: 3,
      );
    }

    Widget button() {
      return RedButton(
        title: "Ubah",
        onTap: () {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Berhasil di edit!',
                style: whiteTextStyle,
              ),
              backgroundColor: Colors.green[600],
              duration: const Duration(milliseconds: 1500),
              width: 200.0, // Width of the SnackBar.
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0, // Inner padding for SnackBar content.
              ),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          SizedBox(
            height: 35,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              children: [
                nameTextField(),
                SizedBox(
                  height: 20,
                ),
                addressTextField(),
                SizedBox(
                  height: 20,
                ),
                noWaTextField(),
                sumberDropdown(),
                SizedBox(
                  height: 20,
                ),
                noteTextField(),
                SizedBox(
                  height: 30,
                ),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
