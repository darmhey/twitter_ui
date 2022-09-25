import 'package:flutter/material.dart';
import 'package:twitter_ui/assets/icons/twitter_icon.dart';
import 'package:twitter_ui/pages/homePage.dart';
import 'package:twitter_ui/pages/messages.dart';
import 'package:twitter_ui/pages/notification.dart';
import 'package:twitter_ui/pages/search.dart';
import 'package:twitter_ui/pages/spaces.dart';
import 'package:twitter_ui/widgets/avatar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  final pages = [
    const HomePage(),
    const Search(),
    const Spaces(),
    const Notifications(),
    const Messages(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Avatar(
              radius: 18,
              profileImage: "assets/images/profile.JPG",
            )
          ],
        ),
        title: const Icon(
          TwitterIcon.twitterIcon,
          size: 30,
          color: Colors.blue,
        ),
        actions: const [
          Icon(
            Icons.auto_awesome_outlined,
            size: 30,
          )
        ],
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 28,
            ),
            label: "label",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "label",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_voice_outlined),
            label: "label",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "label",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_post_office_outlined),
            label: "label",
          ),
        ],
      ),
    );
  }
}
