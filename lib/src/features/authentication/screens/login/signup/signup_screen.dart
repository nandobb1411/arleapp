import 'package:arle_app/src/common_widgets/form/form_header_widget.dart';
import 'package:arle_app/src/constants/image_strings.dart';
import 'package:arle_app/src/constants/sizes.dart';
import 'package:arle_app/src/constants/text_strings.dart';
import 'package:arle_app/src/features/authentication/screens/login/signup/widgets/signup_footer_widget.dart';
import 'package:arle_app/src/features/authentication/screens/login/signup/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: tLogin_SignUp_Image,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                const SignUpForm(),
                const SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
