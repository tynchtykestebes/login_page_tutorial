import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page_tutorial/config/app_icons.dart';
import 'package:login_page_tutorial/config/app_strings.dart';
import 'package:login_page_tutorial/pages/home_page.dart';
import 'package:login_page_tutorial/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.amber,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icHome),
              label: AppStrings.home,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icFavorite),
              label: AppStrings.favorites,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icAdd),
              label: AppStrings.add,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage),
              label: AppStrings.messages,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icUser),
              label: AppStrings.user,
            ),
          ]),
    );
  }

  final pages = [
    HomePage(),
    const Center(
      child: Text('Favorite'),
    ),
    const Center(
      child: Text('Add'),
    ),
    const Center(
      child: Text('Messages'),
    ),
    const ProfilePage(),
  ];
}
