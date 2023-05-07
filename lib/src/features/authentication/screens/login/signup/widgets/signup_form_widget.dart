import 'package:flutter/material.dart';
import '../../../../../../constants/colors.dart';
import '../../../../../../constants/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFromHeight - 10),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Full Name"),
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                      color: tPrimaryColor,
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: tPrimaryColor),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: tPrimaryColor))),
              ),
              const SizedBox(
                height: tFromHeight - 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("E-mail"),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: tPrimaryColor,
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: tPrimaryColor),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: tPrimaryColor))),
              ),
              const SizedBox(
                height: tFromHeight - 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(
                      Icons.fingerprint,
                      color: tPrimaryColor,
                    ),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: tPrimaryColor),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2.0, color: tPrimaryColor)),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
