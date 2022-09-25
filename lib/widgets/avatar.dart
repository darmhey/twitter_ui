import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double radius;
  final String profileImage;
  const Avatar({
    required this.radius,
    Key? key,
    required this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(profileImage),
      radius: radius,
    );
  }
}
