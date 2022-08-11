import 'package:flutter/material.dart';

import '../app_constants/text_styles/app_text_style.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.teal,
      title: Text(
        'Dice App',
        style: AppTextStyle.appBarStyle,
      ),
    );
  }
}
