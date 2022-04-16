import 'package:cold_ones/views/authentications/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class signupcontroller extends  GetxController{

   final _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";
  var confirmPassword = "";
    final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
 registration() async {
    if (password == confirmPassword) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        print(userCredential);
        Get.snackbar(
              "Congratulations",
               "Register succssfully",
               backgroundColor: Colors.white,
               snackPosition: SnackPosition.BOTTOM,
                 
               );
       Get.to( Login());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print("Password Provided is too Weak");
           Get.snackbar(
              "Password",
               "Password Provided is too Weak",
              
               snackPosition: SnackPosition.BOTTOM,
                 
               );
        } else if (e.code == 'email-already-in-use') {
          print("Account Already exists");
        Get.snackbar(
              "Account",
               "Account Already exists",
              
               snackPosition: SnackPosition.BOTTOM,
                 
               );
        }
      }
    } else {
      print("Password and Confirm Password doesn't match");
       Get.snackbar(
                  
              "password not match",
               "Password and Confirm Password doesn't match",
              backgroundColor: Colors.white,
               snackPosition: SnackPosition.BOTTOM,
                 
               );
    }
   
  }
}