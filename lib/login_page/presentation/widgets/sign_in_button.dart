import 'package:flutter/material.dart';
import 'package:login_screen/res/app_colors.dart';
import 'package:login_screen/res/app_text_styles.dart';
import 'package:login_screen/res/pages_links.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PagesLinks.homePage);
      },
      child: Container(
        height: 60,
        width: 320,
        decoration: BoxDecoration(
          color: AppColors.main,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            'Sign In',
            style: AppTextStyles.button,
          ),
        ),
      ),
    );
  }
}
