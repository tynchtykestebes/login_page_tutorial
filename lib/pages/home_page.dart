import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page_tutorial/components/post_item.dart';
import 'package:login_page_tutorial/components/toolbar.dart';
import 'package:login_page_tutorial/config/app_icons.dart';
import 'package:login_page_tutorial/config/app_strings.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.icLocation),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User number $i');
    }
  }
}
