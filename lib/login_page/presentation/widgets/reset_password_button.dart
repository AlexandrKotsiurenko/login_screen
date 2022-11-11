import 'package:flutter/material.dart';
import 'package:login_screen/res/app_text_styles.dart';
import 'package:login_screen/res/pages_links.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PagesLinks.resetPasswordPage);
      },
      child: const Text(
        'Forgot Password?',
        style: AppTextStyles.subTitle,
      ),
    );
  }
}
