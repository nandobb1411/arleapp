import 'package:arle_app/src/constants/colors.dart';
import 'package:arle_app/src/constants/image_strings.dart';
import 'package:arle_app/src/constants/sizes.dart';
import 'package:arle_app/src/constants/text_strings.dart';
import 'package:arle_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:arle_app/src/features/authentication/screens/login/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(tWelcomeScreenImage),
            height: height * 0.6),
            Column(
              children: [
                Text(tWelcomeTitle, style: Theme.of(context).textTheme.titleLarge,),
                Text(tWelcomeSubTitle, style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center,),
              ],
            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tPrimaryColor,
                      side: BorderSide(color: tPrimaryColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                    ),
                    child: Text("Login".toUpperCase()))),
                const SizedBox(width: 10.0,),
                Expanded(child: ElevatedButton(onPressed: () => Get.to(() => const SignUpScreen()),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(),
                        foregroundColor: tSecondaryColor,
                        backgroundColor: tPrimaryColor,
                        side: BorderSide(color: tPrimaryColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                    ),
                    child: Text("SignUp".toUpperCase()))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
