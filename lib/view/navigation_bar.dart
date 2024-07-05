import 'package:flutter/material.dart';

import 'home.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    int _currentIndex = 0;
    List<Widget> pages = [
      const Home(),
      const Home(),
      const Home(),
      const Home(),
    ];

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/1.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset('assets/icons/1.2.png',
                  color: const Color(0xffFBC700), height: myHeight * 0.03)),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/2.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset('assets/icons/2.2.png',
                  color: const Color(0xffFBC700), height: myHeight * 0.03)),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/3.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset('assets/icons/3.2.png',
                  color: const Color(0xffFBC700), height: myHeight * 0.03)),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/4.1.png',
                height: myHeight * 0.03,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset('assets/icons/4.2.png',
                  color: const Color(0xffFBC700), height: myHeight * 0.03))
        ],
      ),
    ));
  }
}
