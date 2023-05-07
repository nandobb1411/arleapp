import 'package:arle_app/src/constants/text_strings.dart';
import 'package:arle_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';
import 'package:arle_app/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: tFromHeight - 20,
        ),
        TextButton(onPressed: () => Get.to(() => const LoginScreen()),
          child: Text.rich(
            TextSpan(
              text: tAlreadyHaveAnAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: [
                TextSpan(
                  text: "Login",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
