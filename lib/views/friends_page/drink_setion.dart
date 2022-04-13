import 'package:flutter/material.dart';
class DrinkSetion extends StatefulWidget {
  const DrinkSetion({ Key? key }) : super(key: key);

  @override
  State<DrinkSetion> createState() => _DrinkSetionState();
}

class _DrinkSetionState extends State<DrinkSetion> {
   bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 60,),
               Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Text("Drinking Sessions", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    Text("Let your friend know you are\n enjoying drink", style: TextStyle(fontSize: 15, ),)
                 ],),
               ),
               SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Column(children: [
                     Container(

                       height: 65,
                      //  width: 330,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black
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
                         Text("15 minutes", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white), )
                       ],),
                       
                     ),
                     SizedBox(height: 20,),
                        Container(

                       height: 65,
                      //  width: 330,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black
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
                         Text("30 minutes", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white), )
                       ],),
                       
                     ),
                     SizedBox(height: 20,),
                        Container(

                       height: 65,
                      //  width: 330,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black
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
                         Text("1 hour", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white), )
                       ],),
                       
                     ),
                     SizedBox(height: 20,),
                        Container(

                       height: 65,
                      //  width: 330,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                         boxShadow: [
                        BoxShadow(
                          color: Colors.black
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
                         Text("3 hours", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white), )
                       ],),
                       
                     ),
                
                ],),
              ),
              SizedBox(height: 20,),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   Text("shair your location when drinking", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
               Switch(
                  onChanged: null,
                  value: isSwitched,
                  activeColor: Colors.green,
                  activeTrackColor: Colors.green,
                  inactiveThumbColor: Colors.green,
                  inactiveTrackColor: Colors.green,
                ),
                    // Text("Let your friend know you are\n enjoying drink", style: TextStyle(fontSize: 15, ),)
                 ],),
                   SizedBox(height: 20,),
                   Text("Cancle", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              
            ],),
          ),
        ),

    );
  }
}