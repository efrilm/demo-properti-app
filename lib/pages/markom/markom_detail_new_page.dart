import 'package:flutter/material.dart';
import 'package:properti1/pages/markom/markom_edit_lead.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_outlined.dart';
import 'package:properti1/widgets/button_red.dart';
import 'package:properti1/widgets/card_icon.dart';
import 'package:properti1/widgets/card_information_lead.dart';
import 'package:properti1/widgets/card_information_user.dart';
import 'package:properti1/widgets/card_note.dart';
import 'package:properti1/widgets/custom_appbar.dart';
import 'package:properti1/widgets/dialog_delete.dart';
import 'package:properti1/widgets/divider_vertical.dart';
import 'package:properti1/widgets/header_card.dart';

class MarkomDetailNew extends StatelessWidget {
  const MarkomDetailNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(
        text: "Detail Lead",
        action: Row(
          children: [
            CardIcon(
              icon: Icons.edit_outlined,
              height: 30,
              width: 30,
              iconSize: 20,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MarkomEditLead()));
              },
            ),
            SizedBox(
              width: 6,
            ),
            CardIcon(
              icon: Icons.delete_outline,
              onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return DialogDelete();
                  }),
              height: 30,
              width: 30,
              iconSize: 20,
            ),
          ],
        ),
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
      return CardInformationUser(nameMarkom: 'Alberto', nameSales: "Chriss",);
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
            SizedBox(
              height: 15,
            ),
            ButtonOutlined(
              text: "Ganti Sales",
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(radius8),
                      topRight: Radius.circular(radius8),
                    ),
                  ),
                  builder: (builder) {
                    return Container(
                      height: 200,
                      margin: EdgeInsets.only(
                        top: 20,
                        left: defaultMargin,
                        right: defaultMargin,
                        ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ganti Sales",
                            style: redTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: kGreyColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(radius8),
                            ),
                            child: DropdownButtonFormField(
                              hint: Text(
                                "Pilih Sales",
                              ),
                              // onSaved: (e) => salesSelection,
                              // value: salesSelection,
                              style: darkLightTextStyle,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              items: [
                                DropdownMenuItem(
                                    child: Text("USA"), value: "USA"),
                                DropdownMenuItem(
                                    child: Text("Canada"), value: "Canada"),
                                DropdownMenuItem(
                                    child: Text("Brazil"), value: "Brazil"),
                                DropdownMenuItem(
                                    child: Text("England"), value: "England")
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          RedButton(
                            title: "Save",
                            onTap: () {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Sales Berhasil Diganti!',
                                    style: whiteTextStyle,
                                  ),
                                  backgroundColor: Colors.green[600],
                                  duration: const Duration(milliseconds: 1500),
                                  width: 200.0, // Width of the SnackBar.
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        8.0, // Inner padding for SnackBar content.
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
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
            button(),
          ],
        ),
      ),
    );
  }
}
