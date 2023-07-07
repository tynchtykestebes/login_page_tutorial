import 'package:flutter/material.dart';
import 'package:login_page_tutorial/constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        filled: true,
        fillColor: AppColors.fieldColor,
      ),
    );
  }
}
