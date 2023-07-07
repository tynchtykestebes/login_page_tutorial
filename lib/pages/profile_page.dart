import 'package:flutter/material.dart';
import 'package:login_page_tutorial/components/toolbar.dart';
import 'package:login_page_tutorial/components/user_avatar.dart';
import 'package:login_page_tutorial/config/app_routes.dart';
import 'package:login_page_tutorial/config/app_strings.dart';
import 'package:login_page_tutorial/constants/app_text.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Text(AppStrings.edit),
                ),
                const PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text(AppStrings.logout),
                ),
              ];
            },
          )
        ],
      ),
      body: const Column(
        children: [
          UserAvatar(
            radius: 75,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Eva Adams',
            style: Apptext.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Spain',
            style: Apptext.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '111',
                    style: Apptext.header2,
                  ),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text(
                    '222',
                    style: Apptext.header2,
                  ),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: [
                  Text(
                    '333',
                    style: Apptext.header2,
                  ),
                  Text(AppStrings.following),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
