import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:printmate/src/common_widgets/forgotPassBtn/forgot_password_btn_widget.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/pages/forgot_password/forgot_password_mail/forgot_password_mail_page.dart';

class ForgotPasswordPage {
  
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context, 
                builder: (context) => Container(
                  padding: const EdgeInsets.all(uDefaultSize),
                  child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: uSize20+10,),
                      Text(uForgotPasswordTitle, style: TextStyle(fontSize: uSize24, fontWeight: FontWeight.bold),),
                      Text(uForgotPasswordSubTitle),

                      SizedBox(height: uSize20,),
                      ForgotPasswordBtnWidget(onTap: (){Get.to(()=>ForgotPasswordMailPage());}, btnIcon: Icons.email_outlined, title: uEmail, subtitle: uResetViaEmail),
                      SizedBox(height: uSize20,),
                      ForgotPasswordBtnWidget(onTap: (){}, btnIcon: Icons.mobile_friendly_outlined, title: uPhone, subtitle: uResetViaPhone),

                    ],
                  ),

                )
              );
  }
}
