import 'package:flutter/material.dart';
import 'package:login_page_tutorial/constants/app_colors.dart';
import 'package:login_page_tutorial/constants/app_text.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const ToolBar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: AppColors.bgc,
      title: Text(
        title,
        style: Apptext.header1,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
