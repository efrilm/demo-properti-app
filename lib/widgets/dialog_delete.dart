import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/button_outlined.dart';
import 'package:properti1/widgets/button_red.dart';

class DialogDelete extends StatelessWidget {
  const DialogDelete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.4,
        height: MediaQuery.of(context).size.height / 2.8,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/ilt_delete.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Apakah Yakin Untuk Menghapus?",
              style: darkLightTextStyle,
            ),
            SizedBox(
              height: 3.5,
            ),
            Text(
              "Karena ini hapus permanen",
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RedButton(
                  title: "Ya",
                  onTap: () {},
                  width: 100,
                ),
                ButtonOutlined(
                  text: "Tidak",
                  width: 100,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
