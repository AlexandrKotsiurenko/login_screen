import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_screen/res/app_colors.dart';
import 'package:login_screen/login_page/presentation/pages/home_page.dart';
import 'package:login_screen/login_page/presentation/pages/login_page.dart';
import 'package:login_screen/login_page/presentation/pages/reset_password_page.dart';
import 'package:login_screen/res/pages_links.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        PagesLinks.loginPage: (context) => const LoginPage(),
        PagesLinks.homePage: (context) => const HomePage(),
        PagesLinks.resetPasswordPage: (context) => const ResetPasswordPage(),
      },
    );
  }
}
