// ignore: file_names
import 'package:flutter/material.dart';
import 'package:twitter_ui/widgets/post.dart';

import '../assets/icons/twitter_icon.dart';
import '../widgets/avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.black,
      body: const Post(),
    );
  }
}
