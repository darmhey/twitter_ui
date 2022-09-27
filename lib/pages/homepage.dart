// ignore: file_names
import 'package:flutter/material.dart';
import 'package:twitter_ui/widgets/post.dart';

import '../assets/icons/twitter_icon.dart';
import '../widgets/avatar.dart';

class HomePage extends StatelessWidget {
  List<Widget> _getPost() {
    List<Post> posts = [
      const Post(
        radius: 20,
        image: "assets/images/profile.JPG",
        fullName: "Gbenga Akinyemi",
        userName: "@timitheus",
        timeStamp: "4m",
        content:
            "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
      ),
      const Post(
        radius: 20,
        image: "assets/images/profile.JPG",
        fullName: "Gbenga Akinyemi",
        userName: "@timitheus",
        timeStamp: "4m",
        content:
            "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
      ),
      const Post(
        radius: 20,
        image: "assets/images/profile.JPG",
        fullName: "Gbenga Akinyemi",
        userName: "@timitheus",
        timeStamp: "4m",
        content:
            "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
      ),
      const Post(
        radius: 20,
        image: "assets/images/profile.JPG",
        fullName: "Gbenga Akinyemi",
        userName: "@timitheus",
        timeStamp: "4m",
        content:
            "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
      ),
      const Post(
        radius: 20,
        image: "assets/images/profile.JPG",
        fullName: "Gbenga Akinyemi",
        userName: "@timitheus",
        timeStamp: "4m",
        content:
            "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
      ),
      const Post(
        radius: 20,
        image: "assets/images/profile.JPG",
        fullName: "Gbenga Akinyemi",
        userName: "@timitheus",
        timeStamp: "4m",
        content:
            "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
      ),
      const Post(
        radius: 20,
        image: "assets/images/profile.JPG",
        fullName: "Gbenga Akinyemi",
        userName: "@timitheus",
        timeStamp: "4m",
        content:
            "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
      ),
    ];
    return posts;
  }

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Avatar(
                  radius: 15,
                  profileImage: "assets/images/profile.JPG",
                )
              ],
            ),
            title: const Icon(
              TwitterIcon.twitterIcon,
              size: 25,
              color: Colors.blue,
            ),
            actions: const [
              Icon(
                Icons.auto_awesome_outlined,
                size: 25,
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_getPost()),
          ),
        ],
      ),
    );
  }
}



//Scaffold()
// body: CustomScrollView(
//     primary: true,
//     slivers: <Widget>[
//       SliverAppBar(
//         title: const Text('Hello World'),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.shopping_cart),
//             tooltip: 'Open shopping cart',
//             onPressed: () {
//               // handle the press
//             },




// appBar: AppBar(
//         backgroundColor: Colors.black,
//         elevation: 0,
//         leading: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Avatar(
//               radius: 15,
//               profileImage: "assets/images/profile.JPG",
//             )
//           ],
//         ),
//         title: const Icon(
//           TwitterIcon.twitterIcon,
//           size: 25,
//           color: Colors.blue,
//         ),
//         actions: const [
//           Icon(
//             Icons.auto_awesome_outlined,
//             size: 25,
//           )
//         ],
//       ),
//       backgroundColor: Colors.black,
//       body: Column(
//         children: const [
          
//           Post(
//             radius: 20,
//             image: "assets/images/profile.JPG",
//             fullName: "Gbenga Akinyemi",
//             userName: "@timitheus",
//             timeStamp: "4m",
//             content:
//                 "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
//           ),
//           Post(
//             radius: 20,
//             image: "assets/images/profile.JPG",
//             fullName: "Gbenga Akinyemi",
//             userName: "@timitheus",
//             timeStamp: "4m",
//             content:
//                 "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
//           ),
//         ],
//       ),