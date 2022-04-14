import 'dart:developer';

import 'package:cold_ones/views/authentications/login_page.dart';
import 'package:cold_ones/views/authentications/sing_in_options.dart';
import 'package:cold_ones/views/friends_page/navigation.dart';
import 'package:cold_ones/views/settings/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../controller/dialog_box_controller.dart';
class Main_Screen extends StatefulWidget {
  const Main_Screen({ Key? key }) : super(key: key);
 
  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
     dialogcontroller controller = Get.put(dialogcontroller());
     late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return  Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
 
            child: Container( 
                  
                    //  width: width * 0.26,

             
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
                  child: Column(
                children: [
               
                  Container(
                    height: 320,
          
                    child: Image.asset('images/coldones.png'),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(left: 25,right: 25),
                   child: Column(children: [
                       GestureDetector(
                         onTap: (){
                            controller.loginfirst();
          
                          // Get.to(Sing_InOption(),);
                         },
                         child: Container(
                       
                         height: 140,
                                           //  width: 330,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                          color: Colors.blue[300],
                           boxShadow: [
                          BoxShadow(
                            color: Colors.blue,
                            // offset: const Offset(
                            //   5.0,
                            //   5.0,
                            // ),
                            // blurRadius: 10.0,
                            // spreadRadius: 2.0,
                          ), //BoxShadow
                                           
                                           ],
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Text("GAMES", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400), )
                         ],),
                         
                                          ),
                       ),
                     SizedBox(height: 15,),
                       Container(
          
                       height: 50,
                      //  width: 330,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        color: Colors.blue[300],
                         boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          // offset: const Offset(
                          //   5.0,
                          //   5.0,
                          // ),
                          // blurRadius: 10.0,
                          // spreadRadius: 2.0,
                        ), //BoxShadow
                      
                      ],
                       ),
                       child: GestureDetector(
                         onTap: (){
                           Get.to( Navigatiobar());
                         },
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Text("FRIENDS", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400), )
                         ],),
                       ),
                       
                     ),
               
                SizedBox(height: 15,),
                       Container(
          
                       height: 50,
                      //  width: 330,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                        color: Colors.blue[300],
                         boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          // offset: const Offset(
                          //   5.0,
                          //   5.0,
                          // ),
                          // blurRadius: 10.0,
                          // spreadRadius: 2.0,
                        ), //BoxShadow
                      
                      ],
                       ),
                       
                       child: Row(
          
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                         Text("COCKTAILS", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400), )
                       ],),
                       
                     ),
                     SizedBox(height: 15,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
          
                       IconButton(onPressed: (){Get.to( Setting());}, icon: Icon(Icons.settings, size: 26,))
                     ],),
                   
                   ],),
                 )
                  
                ],
              )
              ),
            ),
          
       
      ),);
  }
}