import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: tFromHeight -20,),
        TextButton(
          onPressed: (){},
          child: Text.rich(
            TextSpan(
              text: "Already heve an Account?",
              style: Theme.of(context).textTheme.bodyLarge,
              children: [
                TextSpan(
                  text: "Signup",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}