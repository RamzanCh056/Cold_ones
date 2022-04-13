import 'package:cold_ones/views/friends_page/profile_firend.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_friend_req.dart';

class Friends extends StatefulWidget {
  Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                  decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
                  )),
                  child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                        onPressed: () {Get.back();},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(
                          'HOME',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    IconButton(
                        onPressed: () {
                        Get.to(AddFriends());
                        },
                        icon: Icon(
                          Icons.person_add,
                          size: 40,
                        ))
                  ],
                ),
              ),
              Container(
                  child: Text(
                'FRIENDS',
                style: TextStyle(
                    fontSize: 44,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14)),
                child: Image.asset('images/IMG_34C351C69B5.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.white,
                          Colors.orange,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                      ],
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.pink,
                          Colors.yellow,
                        ],
                      )),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(ProfileNiels());
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset('images/bottle-with-pop.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Konradin',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text('2197 km'),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/😘.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Niels',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('13 km'),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/🐀.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Nicklas',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('420 km'),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/bottle-with-pop.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Daria',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/bottle-with-pop.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Max',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('images/bottle-with-pop.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Max',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
                  ),
                ),
          )),
    );
  }
}

