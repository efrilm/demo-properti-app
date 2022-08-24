import 'package:flutter/material.dart';
import 'package:properti1/pages/sales/sales_account_page.dart';
import 'package:properti1/pages/sales/sales_dashboard_page.dart';
import 'package:properti1/pages/sales/sales_lead_page.dart';
import 'package:properti1/pages/sales/sales_sold_page.dart';
import 'package:properti1/pages/sales/sales_visit_page.dart';
import 'package:properti1/thema.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  _SalesPageState createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listPage = [
      SalesDashboardPage(),
      SalesLeadPage(),
      SalesVisitPage(),
      SalesSoldPage(),
      SalesAccountPage(),
    ];

    final bottomNavigationitem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.dashboard_outlined,
        ),
        label: "Dashboard",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.assignment_outlined,
        ),
        label: "Lead",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        label: "Berkunjung",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.bookmark_outline,
        ),
        label: "Penjualan",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: "Akun",
      ),
    ];

    final bottomNavBar = BottomNavigationBar(
      items: bottomNavigationitem,
      onTap: onItemTapped,
      currentIndex: currentIndex,
      unselectedItemColor: kGreyColor,
      selectedItemColor: kRedColor,
      selectedLabelStyle: redTextStyle,
    );

    return Scaffold(
      body: listPage[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
