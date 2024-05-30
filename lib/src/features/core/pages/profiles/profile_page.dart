import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:printmate/src/constants/image_strings.dart';
import 'package:printmate/src/constants/sizes.dart';
import 'package:printmate/src/constants/text_string.dart';
import 'package:printmate/src/features/authentication/controllers/signup_controller.dart';
import 'package:printmate/src/features/core/pages/profiles/update_profile_page.dart';
import 'package:printmate/src/features/core/pages/profiles/widgets/profile_menu_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(
        title: Text(uProfile.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(uDefaultSize),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(image: AssetImage(profileImage)),
                ),
              ),
              const SizedBox(height: uSize20,),
              Text(uProfileHeading.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: uSize24),),
              Text(uProfileSubHeading,),

              const SizedBox(height: uSize20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  
                  onPressed: ()=> Get.to(()=> const UpdateProfilePage()),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white
                  ),
                  child: const Text(uEditeProfile),
                ),
              ),

              const SizedBox(height: uSize20+10,),

              Divider(),
              const SizedBox(height: uSize20-10,),

              ProfileMenuWidget(title: uMenu1, icon: LineAwesomeIcons.cog_solid, onPress: (){}, endIcon: true),
              ProfileMenuWidget(title: uMenu2, icon: LineAwesomeIcons.info_solid, onPress: (){}, endIcon: true),
              ProfileMenuWidget(title: uMenu3, icon: LineAwesomeIcons.box_solid, onPress: (){}, endIcon: true),
              ProfileMenuWidget(title: uMenu5, icon: LineAwesomeIcons.cart_plus_solid, onPress: (){}, endIcon: true),

              SizedBox(height: uSize20+10,),
              ProfileMenuWidget(
                title: uLogOut, icon: LineAwesomeIcons.sign_out_alt_solid, 
                onPress: (){
                  controller.logoutUser();

                }, 
                endIcon: false,),


              

              
            ],
          ),
        ),
      ),
    );
  }
}
