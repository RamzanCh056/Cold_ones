import 'package:cold_ones/views/Game.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class logincontroller extends GetxController{

    final _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
 
    userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Get.to( Games());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
         Get.snackbar(
              "opps",
               "No User Found for that Email",
              
               snackPosition: SnackPosition.BOTTOM,
                 
               );
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        Get.snackbar(
              "Wrong password",
               "Wrong Password Provided by User",
              
               snackPosition: SnackPosition.BOTTOM,
                 
               );
      }
    }
  }





}