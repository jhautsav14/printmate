import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:printmate/src/features/authentication/models/user_model.dart';
import 'package:printmate/src/repository/authentication_repository/authentication_repository.dart';
import 'package:printmate/src/repository/user_repository/user_repository.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();


  // Textfield controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());



  // call this function from design & it will do the rest

  void registerUser(String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);



  }
  void loginUser(String email, String password){
    AuthenticationRepository.instance.loginWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    registerUser(user.email, user.password);
  }

  void logoutUser(){
    AuthenticationRepository.instance.logout();
  }

  // phone authentication
  void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }




}