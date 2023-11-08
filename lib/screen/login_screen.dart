import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:new Stack(
        children: <Widget>[
          new Positioned(
            top: 280,
            left: 170,
            child:new Container(
              child:new Icon(
                FontAwesomeIcons.xTwitter,
                color: Colors.white,
                size: 50,
                ),
            )
            ),
            new Positioned(
              top: 360,
              left:50,
              child: new Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TextField(
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                hintText: "   Usename",
                border: InputBorder.none,
              ),
            ),
              ),
            ),
            new Positioned(
              top: 410,
              left:50,
              child: new Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TextField(
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                hintText: "   Password",
                border: InputBorder.none,
              ),
            ),
              ),
            ),
            new Positioned(
              top: 470,
              left: 105,
              child:
              new Container(
                  child: TextButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(180, 0)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color.fromARGB(255, 71, 71, 71)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
                onPressed: () => {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => BottomNavBar(),))
                },
                child: new Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              )
            ),
        ],
      ),
    );
  }
}