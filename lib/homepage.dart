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
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HistoryPage(),
    CurrencyPage(),
    PaymentPage(),
    UserPage()
  ];

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
      body: _pages[_selectedIndex],
    );
  }
}
