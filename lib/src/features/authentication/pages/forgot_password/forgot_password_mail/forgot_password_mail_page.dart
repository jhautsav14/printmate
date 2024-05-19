import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:printmate/src/common_widgets/form/form_header_widget.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/pages/forgot_password/forgot_password_otp/forgot_password_otp.dart';

class ForgotPasswordMailPage extends StatelessWidget {
  const ForgotPasswordMailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(uDefaultSize),
              child: Column(
                children: [
                  const SizedBox(height: uDefaultSize *4,),
                  const FormHeaderWidget(image: forgotPasswordImage, title: uForgetPassword, subtitle: uResetViaEmail),

                  SizedBox(height: uSize20,),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text(uEmail),
                            hintText: uEmail,
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder() 
                          ),
                        ),

                        const SizedBox(height: uSize20,),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(uSize20-15)),
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white
                          
                            ),
                            onPressed: (){
                              Get.to(()=> OTPpage());
                            }, 
                            child: Text(uNext.toUpperCase())
                          ),
                        )
                      ],
                    )
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}