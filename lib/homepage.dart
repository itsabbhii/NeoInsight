import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'IntroPage.dart';
import 'CreditsPage.dart';
import 'TumorsPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages=[
    const IntroPage(),
    const TumorsPage(),
    CreditsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
              gap: 8,
              onTabChange: (index){
                _navigateBottomBar(index);
              },
              haptic: true,
              backgroundColor: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.circle, // Setting icon to null
                  text: "Home",
                  leading: Image.asset('assets/tumors/home.png', width: 30, height: 30),
                ),
                GButton(
                  icon: Icons.circle, // Setting icon to null
                  text: "Tumors",
                  leading: Image.asset('assets/tumors/tumor.png', width: 30, height: 30),
                ),
                GButton(
                  icon: Icons.circle, // Setting icon to null
                  text: "Credits",
                  leading: Image.asset('assets/tumors/people.png', width: 30, height: 30),
                ),
              ]),
        ),
      ),
    );
  }
}
