import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/features/authentication/pages/login/login_footer_widget.dart';
import 'package:printmate/src/features/authentication/pages/login/login_form_widget.dart';
import 'package:printmate/src/features/authentication/pages/login/login_header_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(uDefaultSize),
              child: Column(
                children: [
                  LoginHeaderWidget(size: size),
                  const LoginForm(),
                  const SizedBox(height: uSize20,),

                  const LoginFooterWidget()

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
