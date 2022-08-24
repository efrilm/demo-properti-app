import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/card_notification.dart';
import 'package:properti1/widgets/custom_appbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return CustomAppBar(text: "Notifikasi");
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header(),
            CardNotification(
              title: "Ada lead nih?",
              subtitle: "Segera Follow Up",
              onTap: () {},
            ),
            CardNotification(
              title: "Ada lead nih?",
              subtitle: "Segera Follow Up",
              onTap: () {},
            ),
            CardNotification(
              title: "Ada lead nih?",
              subtitle: "Segera Follow Up",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
