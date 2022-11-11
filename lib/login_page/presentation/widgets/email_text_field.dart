import 'package:flutter/material.dart';
import 'package:login_screen/res/app_colors.dart';
import 'package:login_screen/res/app_text_styles.dart';

class EmailTextField extends StatefulWidget {
  final TextEditingController emailController;

  const EmailTextField({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {

  changesOnField() {
    setState(() {
    });
  }

  @override
  void initState() {
    super.initState();
    widget.emailController.addListener(changesOnField);
  }

  @override
  void dispose() {
    widget.emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Username',
            style: AppTextStyles.subTitle,
          ),
          TextField(
            controller: widget.emailController,
            style: AppTextStyles.regular,
            cursorColor: AppColors.main,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                suffixIcon: widget.emailController.text.isNotEmpty
                    ? const Icon(Icons.check, color: AppColors.main)
                    : null),
          ),
        ],
      ),
    );
  }
}
