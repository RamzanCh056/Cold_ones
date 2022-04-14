import 'package:cold_ones/views/authentications/login_page.dart';
import 'package:cold_ones/views/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
class Sing_InOption extends StatefulWidget {
  const Sing_InOption({ Key? key }) : super(key: key);

  @override
  State<Sing_InOption> createState() => _Sing_InOptionState();
}

class _Sing_InOptionState extends State<Sing_InOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: 
         Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                
              Colors.blue,
                  Color.fromARGB(255, 224, 31, 18),
                   Color.fromARGB(255, 224, 31, 18),
                ],
            )
          ),
          child: Center(
            child: SafeArea(
             
                child: Column(children: [
                  SizedBox(height: 15,),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    
                     IconButton(onPressed: (){
                       Get.to(Main_Screen(),);
                     }, icon: Icon(Icons.arrow_back_ios)),
                     Text("Home", style: TextStyle( color: Colors.black,fontSize: 17),)
                  ],),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 280,

                      
                         

                          child: Image.asset('images/logo.png', fit: BoxFit.fill,),

                        ),
                      )
                  ],),
                  Column(children: [
  //  SignInButton(
  //           Buttons.AppleDark,
  //           onPressed: () {
              
  //           },
  //         ),

                         SignInButton(
  Buttons.Google,
  text: "Sign up with Google",
  onPressed: () {},
),
SignInButtonBuilder(
  text: 'Sign in with Email',
  icon: Icons.email,
  onPressed: () {},
  backgroundColor: Colors.blueGrey[700]!,
),
SignInButton(
  Buttons.FacebookNew,
  
  onPressed: () {},
)
                  ],),
                  SizedBox(height: 18,),
                  Text("Dont have an account yet?"),
                  TextButton(onPressed: (){Get.to( Login());}, child: Text("Register here", style: TextStyle(color: Colors.black),), )



                    
            
                ],),
              
            )
          ),
        ),
      
    );

    
  }
}