import 'package:flutter/material.dart';
import 'package:login_screen/login_page/presentation/widgets/logo_image.dart';
import 'package:login_screen/login_page/presentation/widgets/reset_password_button.dart';
import 'package:login_screen/login_page/presentation/widgets/sign_in_button.dart';
import 'package:login_screen/res/app_colors.dart';
import 'package:login_screen/res/app_text_styles.dart';
import 'package:login_screen/login_page/presentation/widgets/email_text_field.dart';
import 'package:login_screen/login_page/presentation/widgets/password_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            //LOGO
            const LogoImage(),
            const SizedBox(height: 30),

            //SIGN IN TEXT
            const Text(
              'Sign In',
              style: AppTextStyles.title,
            ),
            const SizedBox(height: 30),

            //EMAIL
            EmailTextField(emailController: _emailController),
            const SizedBox(height: 20),

            //PASSWORD
            PasswordTextField(passwordController: _passwordController),
            const SizedBox(height: 30),

            //SIGN IN BUTTON
            const SignInButton(),
            const SizedBox(height: 30),

            //FORGOT PASSWORD BUTTON
            const ResetPasswordButton(),
          ],
        ),
      ),
    );
  }
}
