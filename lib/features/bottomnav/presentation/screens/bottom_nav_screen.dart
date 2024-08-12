import 'package:capital_school/features/announcements/presentation/screens/announcments_screen.dart';
import 'package:capital_school/features/home/presentation/screens/home_screen.dart';
import 'package:capital_school/features/profile/presentation/screens/profile_screen.dart';
import 'package:capital_school/shared/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BottomNavScreen extends StatefulWidget {
  @override
  BottomNavScreenState createState() => BottomNavScreenState();
}

class BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget>pages=[
    const ProfileScreen(),
    const HomeScreen(),
    const AnnouncementsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              const Text("Welcome back, MR ahmed",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        centerTitle: true,
        actions: [SvgPicture.asset('assets/icons/notif.svg')],
      ),
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,

        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.home, color: Colors.white),
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.campaign),
            label: 'Announcements',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
