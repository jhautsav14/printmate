
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/pages/signup/signup_page.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Get.to(()=> SignupPage());
      }, 
      child: Text.rich(
        TextSpan(
          text: uDonthaveAnAccount,
          style: TextStyle(color: Colors.grey[700], fontSize: uSize20-4),
          children: const [
            TextSpan(
              text: uSignup,
              style: TextStyle(color: Colors.deepPurple),
              
            )
          ]
        )
      )
    );
  }
}
