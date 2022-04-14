import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileNiels extends StatefulWidget {
  ProfileNiels({Key? key}) : super(key: key);

  @override
  State<ProfileNiels> createState() => _ProfileNielsState();
}

class _ProfileNielsState extends State<ProfileNiels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          
            child: Container(
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
                  child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: Text(
                          'FRIENDS',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.file_upload_outlined,
                          size: 40,
                        ))
                  ],
                ),
              ),
              Container(
                  child: Text(
                'NIELS',
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text('Message: HOLD on, i\'m on my way!'),
                        Spacer(),
                        Text('09:40', style: TextStyle(color: Colors.grey)),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ]),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text('CHEERS!'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.thumb_up_sharp,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text('CAN I COME!'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.thumbs_up_down_outlined,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text('HOLD ON, I\'M ON MY\n WAY!'),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text('COME OVER!'),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Icon(
                                Icons.thumb_up_sharp,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Icon(
                                Icons.thumb_down,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14, top: 0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text('LETS GRAB A DRINK\n LATER!'),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.edit,
                                color: Colors.orange,
                              ),
                              Text('CREATE MESSAFE'),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          height: 65,
                          child: Image.asset('images/QR Code.png'),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'USERNAME:',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Niels Steinhof',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'FRIENDS SINCE:',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '05.02.21',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
                  ),
                ),
          
          ),
    );
  }
}