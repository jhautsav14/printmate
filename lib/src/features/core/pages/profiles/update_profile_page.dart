import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(uUpdateProfile),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(uDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child:  const Image(image: AssetImage(profileImage)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.deepPurple),
                      child: const Icon(Icons.edit, color: Colors.white,),
                    )
                  )
                ],
              ),

              const SizedBox(height: uSize20+10,),

              TextFormField(
              // controller: controller.fullname,
              decoration:  InputDecoration(
                
                prefixIcon: Icon(Icons.person_2_outlined),
                labelText: uFullname,
                hintText: uFullname,
                border: OutlineInputBorder( borderRadius: BorderRadius.circular(100)),
              ),
            ),
            const SizedBox(height: uSize20-10,),
            TextFormField(
              // controller: controller.email,
              decoration:  InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: uEmail,
                hintText: uEmail,
                border: OutlineInputBorder( borderRadius: BorderRadius.circular(100)),
    
              ),
            ),
            const SizedBox(height: uSize20-10,),
    
            TextFormField(
              // controller: controller.phoneNo,
              decoration:  InputDecoration(
                
                prefixIcon: Icon(Icons.phone_android_outlined),
                labelText: uPhone,
                hintText: uPhone,
                border: OutlineInputBorder( borderRadius: BorderRadius.circular(100)),
                
    
              ),
            ),
            const SizedBox(height: uSize20-10,),
    
            TextFormField(
              // controller: controller.password,
              obscureText: true,
              decoration:  InputDecoration(
                
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelText: uPassword,
                hintText: uPassword,
                border: OutlineInputBorder( borderRadius: BorderRadius.circular(100)),
                suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))
    
              ),
            ),

            const SizedBox(height: uSize20+10,),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.deepPurple),
                onPressed: (){}, child: Text(uUpdateProfile)),
            )
    
            ],
          ),
        ),
      ),
    );
  }
}