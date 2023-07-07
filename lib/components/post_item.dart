import 'package:flutter/material.dart';
import 'package:login_page_tutorial/constants/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user.jpg',
                width: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: Apptext.subtitle3,
              ),
            ],
          ),
          const SizedBox(height: 12,),
          Image.asset('assets/temp/paris2.jpg'),
          const SizedBox(height: 12,),
          const Text(
            'I am in Paris. It is the most beautiful city in the world!',
            style: Apptext.subtitle3,
          ),
        ],
      ),
    );
  }
}
