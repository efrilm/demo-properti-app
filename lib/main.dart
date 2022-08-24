import 'package:flutter/material.dart';
import 'package:properti1/pages/absen/absen.dart';
import 'package:properti1/pages/absen/add_absen.dart';
import 'package:properti1/pages/absen/add_pamit.dart';
import 'package:properti1/pages/markom/add_lead.dart';
import 'package:properti1/pages/markom/markom_page.dart';
import 'package:properti1/pages/masterstock/master_stock_page.dart';
import 'package:properti1/pages/notification/notification_page.dart';
import 'package:properti1/pages/profile/change_image.dart';
import 'package:properti1/pages/profile/change_password.dart';
import 'package:properti1/pages/profile/profile_page.dart';
import 'package:properti1/pages/sales/sales_page.dart';
import 'package:properti1/pages/sign_in.dart';
import 'package:properti1/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lead Management 1',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MarkomPage(),
        '/sign-in': (context) => SignInPage(),
        '/sales-page': (context) => SalesPage(),
        '/master-stock': (context) => MasterStockPage(),
        '/absen-page': (context) => AbsenPage(),
        '/notification': (context) => NotificationPage(),
        '/profile-page': (context) => ProfilePage(),
        '/change-password': (context) => ChangePassword(),
        '/change-image': (context) => ChangeImage(),
        '/add-absen': (context) => AddAbsen(),
        '/add-pamit': (context) => AddAPamit(),
        '/add-lead': (context) => AddLead(),
      },
    );
  }
}
