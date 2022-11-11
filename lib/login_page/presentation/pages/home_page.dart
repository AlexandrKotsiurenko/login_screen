import 'package:flutter/material.dart';
import 'package:login_screen/res/app_colors.dart';
import 'package:login_screen/res/image_links.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: Image.asset(
          ImagesLinks.comingSoon,
          width: 150,
        ),
      ),
    );
  }
}
