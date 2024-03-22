import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:inovact_new/home/home_screen.dart';
import 'package:inovact_new/profile/profile_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        scrolledUnderElevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
        title: Text(
          "Inovact",
          style: TextStyle(
            fontSize: 40,
            color: HexColor("69392A"),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Show search bar
              showSearch(context: context, delegate: SearchBarDelegate());
            },
            icon: Icon(
              Icons.search,
              size: 40,
              color: HexColor("69392A"),
            ),
          ),
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.notifications,
              size: 40,
              color: HexColor("69392A"),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Offstage(
            offstage: selectedIndex != 0,
            child: const HomeScreen(),
          ),
          Offstage(
            offstage: selectedIndex != 1,
            child: const ProfileScreen(),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        color: HexColor("69392A"),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear,color: HexColor("69392A"),),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back,color: HexColor("69392A"),),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
