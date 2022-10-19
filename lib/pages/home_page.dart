import 'package:flutter/material.dart';
import 'package:youtubeui/pages/tabpages/create_tab.dart';
import 'package:youtubeui/pages/tabpages/home_tab.dart';
import 'package:youtubeui/pages/tabpages/library_tab.dart';
import 'package:youtubeui/pages/tabpages/shorts_tab.dart';
import 'package:youtubeui/pages/tabpages/subscription_tab.dart';

import 'constants.dart';

class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final List pages = [
    Home_tab(),
    Shorts_tab(),
    Create_tab(),
    Subscription_tab(),
    Libraray_tab(),
  ];
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: constblack,
            unselectedItemColor: Colors.black54,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            currentIndex: _selectedindex,
            onTap: (value) {
              setState(() {
                _selectedindex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/home.png',
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/shorts.png'),
                  ),
                  label: 'Shorts'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/create.png'),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/subscription.png'),
                  ),
                  label: 'Subscriptions'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/library.png'),
                  ),
                  label: 'Library')
            ]),
        body: pages[_selectedindex]);
  }
}
