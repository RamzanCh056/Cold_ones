import 'dart:collection';
import 'package:cold_ones/views/friends_page/drink_setion.dart';
import 'package:cold_ones/views/friends_page/friends.dart';
import 'package:cold_ones/views/friends_page/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:typed_data';



class Navigatiobar extends StatefulWidget {
  
  
  const Navigatiobar({Key? key, }) : super(key: key);

  @override
  _NavigatiobarState createState() => _NavigatiobarState();
}

class _NavigatiobarState extends State<Navigatiobar> {


  
  @override


  void scheduleRebuild() => setState(() {});
  @override
  
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoTabScaffold(
       // backgroundColor: Colors.transparent,
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) => Search  (),);   /// linkinstagram
          case 1:
             return CupertinoTabView(builder: (context) =>  DrinkSetion() );// PreviewDart (urlImages: [],),
          case 2:
             return CupertinoTabView(builder: (context) =>   Friends ());
        
    
          default:
            return CupertinoTabView(
              builder: (context) => const Scaffold(
                body: Center(
                  child: Text("Error"),
                ),
              ),
            );
        }
      },
    
      // tabBar: InvisibleCupertinoTabBar(),
      tabBar: CupertinoTabBar(
        inactiveColor: Colors.white,
        activeColor: Colors.blue,
        backgroundColor: Colors.black,
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search),
          ),
           BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.location_pin),
          ),
          BottomNavigationBarItem(
            label: '', 
            icon: Icon(Icons.person)
          ),
        
       
          
        ],
         onTap: (value) {
        if (value == 0) {

           setState(() {
            //  print("my logic");
            //   Navigator.of(context).push(MaterialPageRoute(
            //                   builder: (context) =>  thirdRow(
                                  
            //                       )
            //                       ));
                        
           }
           );







        };
        if (value == 1) {
           setState(() {
            //    print("load assests");
            // loadAssets();
            
          
           });
        };
        if (value == 2)  { 
            setState(() {
                     
                    });
                                };
        if (value == 3) ("two");
        if (value == 4) ("two");
        
      },
      ),
      ),
    );
  }
   
   
  
}
