import 'package:flutter/material.dart';
import 'package:twitter_ui/widgets/avatar.dart';

class Post extends StatelessWidget {
  final double radius;
  final String image;
  final String fullName;

  final String userName;

  final String timeStamp;
  final String content;

  const Post({
    Key? key,
    required this.radius,
    required this.image,
    required this.fullName,
    required this.userName,
    required this.timeStamp,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Avatar(
              radius: radius,
              profileImage: image,
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
                      children: [
                        Text(
                          fullName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const VerticalSpace(
                          verticalWidth: 5,
                        ),
                        Text(
                          // "@timotheus",  //"Gbenga Akinyemi",
                          userName,
                          style: const TextStyle(color: Colors.white70),
                        ),
                        const VerticalSpace(
                          verticalWidth: 2,
                        ),
                        const Text(
                          '.',
                          style: TextStyle(color: Colors.white70),
                        ),
                        const VerticalSpace(
                          verticalWidth: 5,
                        ),
                        Text(
                          timeStamp,
                          style: const TextStyle(color: Colors.white70),
                        ),
                        const VerticalSpace(
                          verticalWidth: 75,
                        ),
                        const Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                    Text(
                      content,
                      style: const TextStyle(
                        color: Colors.white,
                        letterSpacing: 0.2,
                        wordSpacing: 0.3,
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
                            color: Colors.grey,
                            size: 20,
                          ),
                          VerticalSpace(
                            verticalWidth: 65,
                          ),
                          Icon(
                            Icons.autorenew_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                          VerticalSpace(
                            verticalWidth: 65,
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey,
                            size: 20,
                          ),
                          VerticalSpace(
                            verticalWidth: 65,
                          ),
                          Icon(
                            Icons.ios_share_outlined,
                            color: Colors.grey,
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
          thickness: 0.3,
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
