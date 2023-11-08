// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // void main() {
// //   runApp(new MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     home: new halHallo(),
// //   ));
// // }

// // class halHallo extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.black,
// //       appBar: new AppBar(
// //         elevation: 24,
// //         backgroundColor:Colors.black,
// //         leading: new IconButton(
// //           icon: new Icon(Icons.account_circle_outlined),
// //           onPressed: () => {

// //           },
// //         ),
// //         actions: <Widget>[
// //           new IconButton(
// //             icon: new Icon(Icons.settings),
// //             onPressed: () {
              
// //             },
// //           )
// //         ],
// //         title: new Center(
// //           child: new Icon(FontAwesomeIcons.twitter)
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         elevation: 24,
// //         backgroundColor:Colors.black,
// //         selectedItemColor: Colors.blue,
// //         type: BottomNavigationBarType.fixed,
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home,color: Colors.white,),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.search,color: Colors.white,),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.mic,color: Colors.white,),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.doorbell_rounded,color: Colors.white,),
// //             label: '',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.mail,color: Colors.white,),
// //             label: '',
// //           ),
          
// //         ],
        
// //       ),
      
// //     );
// //   }
// // }
//       // body: new Container(
//       //   color: Color.fromARGB(255, 0, 0, 0),
//       //   child: new Center(
//       //     child: new Icon(Icons.favorite,color: Colors.red),
//       //     child: new Text(
//       //       "Love You",
//       //       style: new TextStyle(color: Colors.white,fontFamily: "Serif",fontSize: 20.0),
//       //     ),
//       //   ),
//       // ),
  


import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
Future main() async {
  await Future.delayed(const Duration(seconds: 0));
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;

//   final List<Widget> _children = [
//     HomeScreen(),
//     SearchScreen(),
//     MicScreen(),
//     NotifikasiScreen(),
//   ];

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: onTabTapped,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.black,
//         currentIndex: _currentIndex,
//         items: [
//                     BottomNavigationBarItem(
//             icon: Icon(Icons.home,color: Colors.white,),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search,color: Colors.white,),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mic,color: Colors.white,),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.doorbell_rounded,color: Colors.white,),
//             label: '',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail,color: Colors.white,),
//             label: '',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: new AppBar(
//         elevation: 24,
//         backgroundColor:Colors.black,
//         leading: new IconButton(
//           icon: new Icon(Icons.account_circle_outlined),
//           onPressed: () => {

//           },
//         ),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.settings),
//             onPressed: () {
              
//             },
//           )
//         ],
//         title: new Center(
//           child: new Icon(FontAwesomeIcons.twitter)
//         ),
//       ),
//       // 
      
//     );
//   }
// }

// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: new AppBar(
//         elevation: 24,
//         backgroundColor:Colors.black,
//         leading: new IconButton(
//           icon: new Icon(Icons.account_circle_outlined),
//           onPressed: () => {

//           },
//         ),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.settings),
//             onPressed: () {
              
//             },
//           )
//         ],
//         title:Container(
//           decoration:BoxDecoration(
//             color: Color.fromARGB(255, 32, 32, 32),
//             border: Border.all(color: Colors.black,width:1,),
//             borderRadius: BorderRadius.all(Radius.circular(20))
//           ),
//           child:TextField(
//           decoration: InputDecoration(
//             isCollapsed: true,
//             contentPadding:EdgeInsets.symmetric(vertical: 8),
//             hintText: "   Search Twitter",
//             border: InputBorder.none,
//           ),
//         ),
//         ) 
//       ),
//       // 
      
//     );
//   }
// }

// class MicScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: new AppBar(
//         elevation: 24,
//         backgroundColor:Colors.black,
//         leading: new IconButton(
//           icon: new Icon(Icons.account_circle_outlined),
//           onPressed: () => {

//           },
//         ),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.settings),
//             onPressed: () {
              
//             },
//           )
//         ],
//         title:Container(
//           decoration:BoxDecoration(
//             color: Color.fromARGB(255, 32, 32, 32),
//             border: Border.all(color: Colors.black,width:1,),
//             borderRadius: BorderRadius.all(Radius.circular(20))
//           ),
//           child:TextField(
//           decoration: InputDecoration(
//             isCollapsed: true,
//             contentPadding:EdgeInsets.symmetric(vertical: 8),
//             hintText: "   Search Twitter",
//             border: InputBorder.none,
//           ),
//         ),
//         ) 
//       ),
//       // 
      
//     );
//   }
// }

// class NotifikasiScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: new AppBar(
//         elevation: 5,
//         backgroundColor:Colors.black,
//         leading: new IconButton(
//           icon: new Icon(Icons.account_circle_outlined),
//           onPressed: () => {

//           },
//         ),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.settings),
//             onPressed: () {
              
//             },
//           )
//         ],
//         title:Text("Notifications"),
//       ),
//       // 
//       body: new Row(
//         children:<Widget>[
//           new Container(
//             child: TextButton(
//               style: ButtonStyle(
//                 minimumSize: MaterialStateProperty.all<Size>(Size(130,0)),
//               ),
//               onPressed: () => {

//               },
//               child: new Text("All",style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//               ),
//               ),
//             ),
//           ),
//           new Container(
//             child: TextButton(
//               style: ButtonStyle(
//                 minimumSize: MaterialStateProperty.all<Size>(Size(130,0)),
//               ),
//               onPressed: () => {

//               },
//               child: new Text("Verified",style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//               ),
//               ),
//             ),
//           ),
//           new Container(
//             child: TextButton(
//               style: ButtonStyle(
//                 minimumSize: MaterialStateProperty.all<Size>(Size(130,0)),
//               ),
//               onPressed: () => {

//               },
//               child: new Text("Mentions",style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//               ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
