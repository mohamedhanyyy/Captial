import 'package:capital_school/features/announcements/presentation/screens/announcments_screen.dart';
import 'package:capital_school/features/home/presentation/screens/home_screen.dart';
import 'package:capital_school/features/profile/presentation/screens/profile_screen.dart';
import 'package:capital_school/shared/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

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

  List<Widget> pages = [
    const ProfileScreen(),
    const HomeScreen(),
    const AnnouncementsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      drawer: const Drawer(),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            Text("Welcome back, MR ahmed",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor)),
          ],
        ),
        centerTitle: true,

        // actions: [SvgPicture.asset('assets/icons/notif.svg')],
      ),
      body: pages[_selectedIndex],
      floatingActionButton: InkWell(
        onTap: (){
          _selectedIndex = 1;
          setState(() {

          });
        },
        child: Container(
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withOpacity(.6),
                blurRadius: 20,
                spreadRadius: 2,
              )
            ],
            shape: BoxShape.circle,
          ),
          width: 55,
          height: 55,
          child: const CircleAvatar(
            child: Icon(Icons.home),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.whiteColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
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
