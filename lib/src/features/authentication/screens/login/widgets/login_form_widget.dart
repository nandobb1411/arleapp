import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFromHeight -10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "E-mail",
                hintText: "E-mail",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: tFromHeight,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )
              ),
            ),
            const SizedBox(height: tFromHeight - 20,),
            Align(alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){}, child: Text("Forget Password?")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){}, child: Text("Login".toUpperCase()),
              ),
            ),
          ],
        ),
      ),);
    }
  }
