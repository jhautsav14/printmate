
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/pages/login/login_page.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Get.to(()=> LoginPage());
      }, 
      child: Text.rich(
        TextSpan(
          text: uAlreadyHaveAnAccount,
          style: TextStyle(color: Colors.grey[700], fontSize: uSize20-4),
          children: const [
            TextSpan(
              text: uLogin,
              style: TextStyle(color: Colors.deepPurple),
              
            )
          ]
        )
      )
    );
  }
}
