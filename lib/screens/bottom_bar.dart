import 'package:booktickets/screens/account_view.dart';
import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedtIndex=3;
  static final List<Widget>_widgetOption =<Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(ticket: {},),
    const Profile(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedtIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption[_selectedtIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile")
        ],
        currentIndex: _selectedtIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: true,
        selectedItemColor: const Color(0xfff57c80),

      ),
    );
  }
}
