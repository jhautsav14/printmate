import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:printmate/src/common_widgets/form/form_header_widget.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/pages/signup/signup_footer_widget.dart';
import 'package:printmate/src/features/authentication/pages/signup/signup_form_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(uDefaultSize),
              child: const Column(
                children: [
                  FormHeaderWidget(image: signupImage, title: uSignupTitle, subtitle: uSignupSubtitle),

                  SignupForm(),

                  SignupFooterWidget()
                ],
              ),
                    
            ),
          ),
        ),
      ),
    );
  }
}