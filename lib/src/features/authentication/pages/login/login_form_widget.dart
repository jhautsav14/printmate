
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/controllers/signup_controller.dart';
import 'package:printmate/src/features/authentication/pages/forgot_password/forgot_password_options/forgot_password_modal_bottom_sheet_widget.dart';
import 'package:printmate/src/features/core/pages/dashboard/dashboard.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: uSize20),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: uEmail,
                hintText: uEmail,
                border: OutlineInputBorder()
    
              ),
            ),
            const SizedBox(height: uSize20-10,),
    
            TextFormField(
              controller: controller.password,
              obscureText: true,
              decoration: const InputDecoration(
                
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelText: uPassword,
                hintText: uPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))
    
              ),
            ),
    
            const SizedBox(height: uSize20-15,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){

                ForgotPasswordPage.buildShowModalBottomSheet(context);
              }, child: Text(uForgetPassword)),
            ),
    
            SizedBox(
              width:double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                ),
                onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    controller.loginUser(controller.email.text.trim(), controller.password.text.trim());
                  }
                }
                , 
                child: Text(uLogin.toUpperCase())
              ),
            ),
            const SizedBox(height: uSize20,),

            const Text("OR"),

            const SizedBox(height: uSize20,),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                ),
                icon: Image(image: AssetImage(signinWithGoogle), width: 40,),
                onPressed: (){}, 
                label: Text(uGoogleSignin),
                ),
            )

          ],
        ),
    
      )
    );
  }
}