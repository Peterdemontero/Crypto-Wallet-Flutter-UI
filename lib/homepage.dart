import 'package:crypto_wallet/pages/currency_page.dart';
import 'package:crypto_wallet/pages/history_page.dart';
import 'package:crypto_wallet/pages/payment_page.dart';
import 'package:crypto_wallet/pages/user_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Current page selected Index
  int _selectedIndex = 0;

  // List of pages for the bottomNav Bar
  final List<Widget> _pages = [
    HistoryPage(),
    CurrencyPage(),
    PaymentPage(),
    UserPage()
  ];

  // This function take user input to change the page index
  void _bottomNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff221f3a),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xfff221f3a),
          color: Color(0xff301B57),
          animationDuration: const Duration(milliseconds: 400),
          letIndexChange: (index) => true,
          onTap: _bottomNav,
          items: [
            Image.asset(
              'lib/icons/history.png',
              height: 40.0,
            ),
            Image.asset(
              'lib/icons/currency-exchange.png',
              height: 40.0,
            ),
            Image.asset(
              'lib/icons/payment.png',
              height: 40.0,
            ),
            Image.asset(
              'lib/icons/person.png',
              height: 40.0,
            ),
          ]),

      // This fetch the pages from the list at selected Index
      body: _pages[_selectedIndex],
    );
  }
}
