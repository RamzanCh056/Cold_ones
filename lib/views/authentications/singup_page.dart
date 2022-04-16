
import 'package:cold_ones/controller/signup_controller.dart';
import 'package:cold_ones/views/authentications/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 

  class SignUp extends StatefulWidget {
    const SignUp({ Key? key }) : super(key: key);
  
    @override
    State<SignUp> createState() => _SignUpState();
  }
  
  class _SignUpState extends State<SignUp> {
     signupcontroller controller = Get.put(signupcontroller());
      final _formKey = GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 1000,
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
            )),
            child: Center(
                child: Column(
                  
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {Get.back();}, icon: Icon(Icons.arrow_back_ios)),
                    Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                   height: 280,
        
                  child: Image.asset('images/logo.png'),
                ),
               Form(
                  key: _formKey,
                 child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(left: 16,right: 16),
                 child: Column(children: [
                    Container(
                  
                    child:
                     TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      
                      
                    ),
                  ),
                      controller:controller. emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        } else if (!value.contains('@')) {
                          return 'Please Enter Valid Email';
                        }
                        return null;
                      },
                    ),
                  ),
                   SizedBox(height: 18,),
                 
                    Container(
                 
                    child:
                     TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                    hintText: "UserName",
                   
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      
                      
                    ),
                  ),
                     
                    ),
                  ),
                     SizedBox(height: 18,),
              
             Container(
                  
                    child:
                     TextFormField(
                   autofocus: false,
                       obscureText: true,
                      decoration: InputDecoration(
                  hintText: "Password",
                    prefixIcon: Icon(Icons.visibility),
                    hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      
                      
                    ),
                  ),
                      controller:controller. passwordController,
                     validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password';
                        }
                        return null;
                      },
                    ),
                  ),
                            SizedBox(height: 18,),
              
             Container(
                  
                    child:
                     TextFormField(
                       autofocus: false,
                       obscureText: true,
                      decoration: InputDecoration(
                  hintText: "Confirm password",
                    prefixIcon: Icon(Icons.visibility),
                    hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder(),
                     errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    
                     ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      
                      
                    ),
                  ),
                      controller:controller. confirmPasswordController,
                     
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                    ),
                  ),

                 ],),
               ),
                SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                              setState(() {
                                controller.email = controller. emailController.text;
                             controller.password = controller. passwordController.text;
                           controller.confirmPassword =  controller.confirmPasswordController.text;
                              
                              });
                              controller.registration();
                            }
                  },
                  child: Text('SignUp'),
                )
               ],))
              ],
            )),
          ),
        ),
      ),
    );
    }
  }
