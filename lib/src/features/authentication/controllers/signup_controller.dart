import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:printmate/src/repository/authentication_repository/authentication_repository.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();


  // Textfield controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final phoneNo = TextEditingController();



  // call this function from design & it will do the rest

  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);



  }


}