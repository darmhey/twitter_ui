import 'package:flutter/material.dart';

class Spaces extends StatelessWidget {
  const Spaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Spaces",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
