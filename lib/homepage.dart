import 'package:flutter/material.dart';
import 'package:neoinsight/IntroPage.dart';
import 'package:neoinsight/TumorsPage.dart';
import 'package:neoinsight/CreditsPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  // Create a PageController to control the PageView
  final PageController _pageController = PageController();

  // Method to handle page change when swiping
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index when the page changes
    });
  }

  // Method to handle navigation when tapping on the GNav items
  void _navigateBottomBar(int index) {
    _pageController.jumpToPage(index); // Navigate to the selected page
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  final List<Widget> _pages = [
    const IntroPage(),
    const TumorsPage(),
    CreditsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged, // Update selected index when page changes
        children: _pages,
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            gap: 8,
            onTabChange: (index) {
              _navigateBottomBar(index);
            },
            haptic: true,
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            selectedIndex: _selectedIndex, // Set the selected index
            tabs: [
              GButton(
                icon: Icons.circle,
                text: "Home",
                leading: Image.asset('assets/tumors/home.png', width: 30, height: 30),
              ),
              GButton(
                icon: Icons.circle,
                text: "Tumors",
                leading: Image.asset('assets/tumors/tumor.png', width: 30, height: 30),
              ),
              GButton(
                icon: Icons.circle,
                text: "Credits",
                leading: Image.asset('assets/tumors/people.png', width: 30, height: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
