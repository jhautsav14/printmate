import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:printmate/src/common_widgets/form/form_header_widget.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';

class OTPpage extends StatelessWidget {
  const OTPpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(uDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  const SizedBox(height: uSize20+20,),
                  FormHeaderWidget(image: otpImage, title: uOtp.toUpperCase()  , subtitle: uOtpSubtitle),

                  const SizedBox(height: uSize20+20,),
                  OtpTextField(
                    numberOfFields: 6,
                    fillColor: Colors.black.withOpacity(0.1),
                    filled: true,
                    onSubmit: (code){
                      print("OTP is => $code");
                    },
                  ),
                  const SizedBox(height: uSize20+20,),

                  SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(uSize20-15)),
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.white
                          
                            ),
                            onPressed: (){
                              
                            }, 
                            child: Text(uNext.toUpperCase())
                          ),
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