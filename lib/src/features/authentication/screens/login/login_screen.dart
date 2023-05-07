import 'package:arle_app/src/common_widgets/form/form_header_widget.dart';
import 'package:arle_app/src/constants/image_strings.dart';
import 'package:arle_app/src/constants/sizes.dart';
import 'package:arle_app/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'widgets/login_footer_widget.dart';
import 'widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(image: tLoginImage, title: tLoginTitle, subTitle: tLoginSubTitle),
                const LoginForm(),
                const LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
