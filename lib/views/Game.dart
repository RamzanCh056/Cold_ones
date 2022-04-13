import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  const Games({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                ),
                Center(
                  child: Text(
                    "Games",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  height: 120.0,
                  // alignment: Alignment.center,
                  child: Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          "images/image1.png",
                          height: 80.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Party Time",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Best way to get the party started and elevate to mood. No one is safe!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120.0,
                  // alignment: Alignment.center,
                  child: Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          "images/image2.png",
                          height: 80.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Truth or dare",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Be ready to reveal your deepest secrets, if not... prepare to embarras yourself",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120.0,
                  // alignment: Alignment.center,
                  child: Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          "images/image3.jpg",
                          height: 80.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Never have I ever",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "The best to get the party started",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120.0,
                  // alignment: Alignment.center,
                  child: Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          "images/image4.jpg",
                          height: 80.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Couples",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Have fun with the person closest to you",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 120.0,
                  // alignment: Alignment.center,
                  child: Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          "images/image5.jpg",
                          height: 80.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Paranoia",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        subtitle: Text(
                          "Best way to get the party started and elevate to mood. No one is safe!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
