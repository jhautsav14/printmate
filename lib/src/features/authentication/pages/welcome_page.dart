import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/pages/login/login_page.dart';
import 'package:printmate/src/features/authentication/pages/signup/signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(uDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(welcomeImage2), height: height*0.6,),
            Column(
              children: [
                Text(uWelcomeTitle, style: TextStyle(fontSize: headlineSize, fontWeight: FontWeight.bold),),
                Text(uWelcomesubTitle),
              ],
            ),
            Row(
              children: [
                Expanded(child: OutlinedButton(
                  onPressed: (){
                    Get.to(()=> LoginPage());
                  }, 
                  child: Text(uLogin.toUpperCase()),),),
                const SizedBox(width: 10.0,),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.deepPurple
                      
                    ),
                    onPressed: (){
                      Get.to(()=> SignupPage());
                    }, 
                    child: Text(uSignup.toUpperCase(), style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      

    );
  }
}