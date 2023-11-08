import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_application_1/screen/login_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
with SingleTickerProviderStateMixin{
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);


    Future.delayed(Duration(seconds:2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => LoginScreen(),
        ));
    });
  }

  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:new Stack(
        children: <Widget>[
          Positioned(
            top:330,
            left: 160,
            child:Container(
            decoration: BoxDecoration(
          color: Colors.black
        ),
        child:new Icon(FontAwesomeIcons.xTwitter,color: Colors.white,size: 70,),
        ), ),
        Positioned(
          top: 400,
          left:160,
          child:new Container(
            child: Text("",style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),)
          )
        )
        ],
      )
      );

  }
}