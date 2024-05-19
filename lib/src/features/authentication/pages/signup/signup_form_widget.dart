
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: uSize20),
        child: Column(
          children: [

            
    
            TextFormField(
              
              decoration: const InputDecoration(
                
                prefixIcon: Icon(Icons.person_2_outlined),
                labelText: uFullname,
                hintText: uFullname,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: uSize20-10,),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: uEmail,
                hintText: uEmail,
                border: OutlineInputBorder()
    
              ),
            ),
            const SizedBox(height: uSize20-10,),
    
            TextFormField(
              decoration: const InputDecoration(
                
                prefixIcon: Icon(Icons.phone_android_outlined),
                labelText: uPhone,
                hintText: uPhone,
                border: OutlineInputBorder(),
                
    
              ),
            ),
            const SizedBox(height: uSize20-10,),
    
            TextFormField(
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
            
    
            SizedBox(
              width:double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                ),
                onPressed: (){}, 
                child: Text(uSignup.toUpperCase())
              ),
            ),
            const SizedBox(height: uSize20-10,),

            const Text("OR"),

            const SizedBox(height: uSize20-10,),

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