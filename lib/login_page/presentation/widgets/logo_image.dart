import 'package:flutter/material.dart';
import 'package:login_screen/res/image_links.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImagesLinks.logo,
      width: 120,
      height: 160,
    );
  }
}
