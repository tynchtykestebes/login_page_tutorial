import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double radius;
  const UserAvatar({super.key, this.radius = 50});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: const AssetImage('assets/temp/user.jpg'),
    );
  }
}
