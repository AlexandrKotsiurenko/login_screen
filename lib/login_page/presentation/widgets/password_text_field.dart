import 'package:flutter/material.dart';
import 'package:login_screen/res/app_colors.dart';
import 'package:login_screen/res/app_text_styles.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController passwordController;

  const PasswordTextField({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Password',
            style: AppTextStyles.subTitle,
          ),
          TextField(
            controller: widget.passwordController,
            style: AppTextStyles.regular,
            cursorColor: AppColors.main,
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureText,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  setState(
                    () {
                      widget.passwordController.text.isNotEmpty
                          ? _obscureText = !_obscureText
                          : _obscureText;
                    },
                  );
                },
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                  color: _obscureText
                      ? AppColors.inactiveEyeChecker
                      : AppColors.activeEyeChecker,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
