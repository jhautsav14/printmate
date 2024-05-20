import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:printmate/src/features/authentication/pages/welcome_page.dart';
import 'package:printmate/src/features/core/pages/dashboard/dashboard.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance => Get.find();

  // varibales
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    
    super.onReady();
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialPage);

  }


  _setInitialPage(User? user) {

    user == null ? Get.offAll(()=> const WelcomePage()) : Get.offAll(()=> const Dashboard());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){}
    catch (_) {}
  }


  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){}
    catch (_) {}
  }


  Future<void> logout() async => await _auth.signOut();



}