import 'package:flutter/material.dart';
import 'package:properti1/pages/markom/markom_account_page.dart';
import 'package:properti1/pages/markom/markom_dashboard_page.dart';
import 'package:properti1/pages/markom/markom_lead_page.dart';
import 'package:properti1/pages/markom/markom_sold_page.dart';
import 'package:properti1/pages/markom/markom_visit_page.dart';
import '../../thema.dart';

class MarkomPage extends StatefulWidget {
  const MarkomPage({Key? key}) : super(key: key);

  @override
  _MarkomPageState createState() => _MarkomPageState();
}

class _MarkomPageState extends State<MarkomPage> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listPage = [
      MarkomDashboardPage(),
      MarkomLeadPage(),
      MarkomVisitPage(),
      MarkomSoldPage(),
      MarkomAccountPage(),
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
