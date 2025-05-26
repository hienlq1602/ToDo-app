import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pages = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pages = [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.purple,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: _pages.elementAt(_currentPage),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xFF8687E7),
          currentIndex: _currentPage,
          onTap: (index) {
            if(index == 2) return;
            setState(() {
              _currentPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/index.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
                activeIcon: Image.asset("assets/images/index.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                    color: Color(0xFF8687E7)),
                backgroundColor: Color(0xFF363636),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/calendar.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
                activeIcon: Image.asset("assets/images/calendar.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                    color: Color(0xFF8687E7)),
                backgroundColor: Color(0xFF363636),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(),
                backgroundColor: Color(0xFF363636),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/focuse.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
                activeIcon: Image.asset("assets/images/focuse.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                    color: Color(0xFF8687E7)),
                backgroundColor: Color(0xFF363636),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/profile.png",
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
                activeIcon: Image.asset("assets/images/profile.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                    color: Color(0xFF8687E7)),
                backgroundColor: Color(0xFF363636),
                label: "")
          ]),
      floatingActionButton: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Color(0xFF8687E7),
            borderRadius: BorderRadius.circular(32),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
