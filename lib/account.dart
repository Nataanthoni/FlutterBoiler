import 'package:flutter/material.dart';
import 'package:fluttermag/anaother.dart';
import 'package:fluttermag/sample.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10, bottom: 20),
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 20),
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 28.0,
                              width: 28.0,
                              child: new IconButton(
                                padding: new EdgeInsets.all(0.0),
                                icon:
                                    new Icon(Icons.person_outlined, size: 28.0),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Divider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Neilie Swanson",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                              VerticalDivider(),
                              Text(
                                "nataanthoni@gmail.com",
                              ),
                            ],
                          ),
                          Divider(),
                          Expanded(
                              child: SizedBox(
                            height: 28.0,
                            width: 28.0,
                            child: new IconButton(
                              padding: new EdgeInsets.all(0.0),
                              icon: new Icon(Icons.navigate_next, size: 28.0),
                              onPressed: () {},
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About us",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "The Project",
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "App info",
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Help",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "FAQ",
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Contact us",
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Legal",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.6)),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Terms of Use",
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Privacy Policy",
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Cookie Policy",
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
