import 'package:flutter/material.dart';
import 'package:twitter_ui/widgets/avatar.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Avatar(
              radius: 20,
              profileImage: "assets/images/profile.JPG",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 3,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Gbenga Akinyemi",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        VerticalSpace(
                          verticalWidth: 5,
                        ),
                        Text(
                          "@timotheus",
                          style: TextStyle(color: Colors.white70),
                        ),
                        VerticalSpace(
                          verticalWidth: 5,
                        ),
                        Text(
                          "4m",
                          style: TextStyle(color: Colors.white70),
                        ),
                        VerticalSpace(
                          verticalWidth: 78,
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                    const Text(
                      "This workshop includes a series of steps to convert an app without any state management to a fully centralized state management system. ",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.2,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.chat_bubble_outline_outlined,
                            color: Colors.white70,
                            size: 20,
                          ),
                          VerticalSpace(
                            verticalWidth: 65,
                          ),
                          Icon(
                            Icons.autorenew_outlined,
                            color: Colors.white70,
                            size: 20,
                          ),
                          VerticalSpace(
                            verticalWidth: 65,
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white70,
                            size: 20,
                          ),
                          VerticalSpace(
                            verticalWidth: 65,
                          ),
                          Icon(
                            Icons.ios_share_outlined,
                            color: Colors.white70,
                            size: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.5,
        ),
      ],
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  final double horizontalHeight;
  const HorizontalSpace({Key? key, required this.horizontalHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: horizontalHeight,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  final double verticalWidth;

  const VerticalSpace({Key? key, required this.verticalWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: verticalWidth,
    );
  }
}
