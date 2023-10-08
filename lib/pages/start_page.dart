import 'package:abvp_app/pages/add_data_page.dart';
import 'package:abvp_app/pages/feed_page.dart';
import 'package:abvp_app/pages/select_event_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List pageList = [
    const FeedPage(),
    const SelectEventPage(),
  ];
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentTabIndex = index;
          });
        },
        currentIndex: currentTabIndex,
        elevation: 12,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.feed,
              ),
              label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.plus), label: 'Add Vrut'),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //       Icons.person,
          //     ),
          //     label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: SafeArea(
        child: pageList[currentTabIndex],
        // declare this ==> int currentTabIndex = 0;
      ),
    );
  }
}
