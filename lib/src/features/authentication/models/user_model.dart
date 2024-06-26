import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  UserModel({
    this.id, 
    required this.fullName, 
    required this.email, 
    required this.phoneNo, 
    required this.password
  });

  toJson(){
    return {
      'FullName' : fullName,
      'Email' : email,
      'Phone' : phoneNo,
      'Password': password,
    };
  }


  // fetch data from firebase to usermodel

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> documnet ) {
    final data = documnet.data()!;
    return UserModel(
      id: documnet.id,
      fullName: data['FullName'], 
      email: data['Email'], 
      phoneNo: data['Phone'], 
      password: data['Password'],
    );
  }

  
}