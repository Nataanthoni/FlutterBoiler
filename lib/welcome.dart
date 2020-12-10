import 'package:flutter/material.dart';
import 'package:fluttermag/account.dart';
import 'package:fluttermag/home.dart';
import 'package:fluttermag/sample.dart';
import 'package:fluttermag/services/auth.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.85)],
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3, left: 20),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "Poppins-Black",
                  ),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.36, left: 20),
                child: Text(
                  "Welcome to this one",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                )),
            Positioned(
                bottom: 30,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: InkWell(
                        onTap: () {
                          signInWithGoogle().then((result) => {
                                if (result != null)
                                  {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (contex) => HomeScreen()))
                                  }
                              });

                          Scaffold.of(context)
                              .showSnackBar(SnackBar(content: Text("Pleae")));
                        }, //end opTap
                        child: Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    image: AssetImage("assets/google.png"),
                                    height: 18.0),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Login with Google",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              ]),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SampleScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5,
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage("assets/facebook.png"),
                                  height: 18.0),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Login with Facebook",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage("assets/twitter.png"),
                                height: 18.0),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Login with Twitter",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ]),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      child: Center(
                        child: Text(
                          "Having trouble logging in?",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        child: Center(
                          child: Text(
                            "Profile screen",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
