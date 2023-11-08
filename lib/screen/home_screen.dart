import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/post_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    MicScreen(),
    NotifikasiScreen(),
    MailScreen(),
  ];

  

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mic,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.doorbell_rounded,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color warna=Colors.white;
  bool tombol=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: WidgetDrawer(),
      
      appBar: new AppBar(
        elevation: 24,
        toolbarHeight: 40,
        backgroundColor: Colors.black,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.account_circle_outlined),
          );
        },),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: new Center(child: new Icon(FontAwesomeIcons.xTwitter)),
      ),
       body:new Stack(
          children: <Widget>[
            Positioned(
              top: 48,
              left: 0,
                child:Container(
                  width: 393,
                  height: 616,
                  color: Colors.white,
                  child: ListView(
                    children:<Widget> [
                      Container(
                        height: 200,
                        color: Colors.black,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 10,
                              child:Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage('https://i.pinimg.com/originals/1c/88/9f/1c889ff3b28a55c039cdb0effe18b375.jpg'),
                                    fit: BoxFit.cover
                                  )
                                ),
                              )
                            ),
                            Positioned(
                              top:10,
                              left: 60,
                              child: Text("Randy Censon #AkuSukaAnime",style: TextStyle(
                                color: Colors.white,
                                fontSize:17,
                                fontWeight: FontWeight.w600
                              ),),
                            ),
                            Positioned(
                              top: 10,
                              left: 350,
                              child: Icon(Icons.more_vert,color:const Color.fromARGB(255, 109, 108, 108),size: 20,),
                            ),
                            Positioned(
                              top: 35,
                              left: 60,
                              child: Text("Suka Femboy Itu Bukan Gayyy!!!",style: TextStyle(
                                color: Colors.white,
                                fontSize:17,
                                fontWeight: FontWeight.w400
                              ),),
                            ),
                            Positioned(
                              top: 80,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if(tombol){
                                    warna=Colors.white;
                                  }
                                  else{
                                    warna=Colors.red;
                                  }
                                  tombol=!tombol;
                                  });
                                },
                                child: Icon(Icons.favorite,color:warna),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 300,
                        color: Colors.orange,
                      ),
                      Container(
                        width: 100,
                        height: 300,
                        color: Colors.red,
                      ),
                      Container(
                        width: 100,
                        height: 300,
                        color: Colors.purple,
                      ),
                      Container(
                        width: 100,
                        height: 300,
                        color: Colors.blue,
                      ),
                    ],
                  )
                ) , 
                
              ),
            // new Positioned(
            //   left: 5,
            //   child:new Container(
            //     width: 210,
            //     color: Colors.black,
            //     child: new TextButton(
            //       onPressed: () {
                    
            //       },
            //       child: new Text("For You",style:TextStyle(
            //         color: Colors.white,
            //         fontSize: 20,
            //       ),),
            //     ),
            //   ),
            // ),
            
            Positioned(
              top: 0,
              left: 186,
              child:ElevatedButton(
                onPressed: () {
                  
                },
                child: Text("Following",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.fromLTRB(60,13,60,13),
                  shape: BeveledRectangleBorder()
                ),
              )
            ),
            Positioned(
              top: 0,
              child:ElevatedButton(
                onPressed: () {
                  
                },
                child: Text("For You",style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.fromLTRB(60,13,60,13),
                  shape: BeveledRectangleBorder()
                ),
              )
            ),
            Positioned(
              top: 570,
              left: 320,
              child:Container(
                child:ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PostScreen()));
                  },
                  child:Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(12),
                    backgroundColor: Colors.blue,
                  ),
                )
                ),
              ),
          ],
        )
    );
  }
}



class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: WidgetDrawer(),
      appBar: new AppBar(
          elevation: 24,
          backgroundColor: Colors.black,
          leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.account_circle_outlined),
          );
        },),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.settings),
              onPressed: () {},
            )
          ],
          title: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 32, 32),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                hintText: "   Search Twitter",
                border: InputBorder.none,
              ),
            ),
          )),
       
    );
  }
}

class MicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: WidgetDrawer(),
      appBar: new AppBar(
          elevation: 24,
          backgroundColor: Colors.black,
          leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.account_circle_outlined),
          );
        },),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.settings),
              onPressed: () {},
            )
          ],
          title: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 32, 32),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                hintText: "   Search Twitter",
                border: InputBorder.none,
              ),
            ),
          )),
      //
    );
  }
}

class NotifikasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: WidgetDrawer(),
      appBar: new AppBar(
        elevation: 5,
        backgroundColor: Colors.black,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.account_circle_outlined),
          );
        },),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: Text("Notifications"),
      ),
      //
      body: new Row(
        children: <Widget>[
          new Container(
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(130, 0)),
              ),
              onPressed: () => {},
              child: new Text(
                "All",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          new Container(
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(130, 0)),
              ),
              onPressed: () => {},
              child: new Text(
                "Verified",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          new Container(
            child: TextButton(
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(130, 0)),
              ),
              onPressed: () => {},
              child: new Text(
                "Mentions",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: WidgetDrawer(),
        backgroundColor: Colors.black,
        appBar: new AppBar(
            elevation: 24,
            backgroundColor: Colors.black,
            leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.account_circle_outlined),
          );
        },),
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.settings),
                onPressed: () {},
              )
            ],
            title: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 32, 32),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextField(
                decoration: InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  hintText: "   Search Direct Messages",
                  border: InputBorder.none,
                ),
              ),
            )),
        body: new Stack(
          children: <Widget>[
            new Positioned(
                top: 250,
                left: 20,
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: new Text(
                  "Welcome to your inbox!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ))),
              new Positioned(
                  top: 350,
                  left: 20,
                  child:
                  new Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child:new Text(
                  "Drop a line, share Tweets and more with private conversations between you and others on Twitter.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 79, 79),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                )
                  )
                  
                ),
            new Positioned(
              top: 440,
              left: 20,
              child:
              new Container(
                  child:ElevatedButton(
                    onPressed: () => {

                    },
                    child: Text("Write a message",style: TextStyle(
                      fontSize: 15
                    ),),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(14),
                      backgroundColor: Colors.blue
                    ),
                  )
              ),
            ),
            new Positioned(
              top: 580,
              left: 329,
                child: new Container(
                  decoration:BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: new IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      )),
                ),
            ),
            
          ],
        ));
  }
}

class WidgetDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      backgroundColor: Colors.black,
      child:Stack(
      children: <Widget>[
        Positioned(
          top: 40,
          left: 10,
          child: Icon(Icons.account_circle_rounded,color: Colors.white,size: 45,),
        ),
        Positioned(
          top: 100,
          left: 10,
          child: Text("Rendy Wibu",style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),),
            ),
        Positioned(
          top:100,
          left: 110,
          child: Icon(Icons.lock,color: Colors.white,size: 20,),
        ),
        Positioned(
          top: 125,
          left: 10,
          child: Text("@randygantengbanget",style: TextStyle(
                color: Color.fromARGB(255, 80, 79, 79),
                fontSize: 15,
                fontWeight: FontWeight.normal
              ),),
            ),
        Positioned(
          top: 160,
          left: 10,
          child: Text("4",style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal
              ),),
            ),
        Positioned(
          top: 160,
          left: 25,
          child: Text("Mengikuti",style: TextStyle(
                color: Color.fromARGB(255, 80, 79, 79),
                fontSize: 16,
                fontWeight: FontWeight.normal
              ),),
            ),
        Positioned(
          top: 160,
          left: 105,
          child: Text("18",style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal
              ),),
            ),
        Positioned(
          top: 160,
          left: 129,
          child: Text("Pengikut",style: TextStyle(
                color: Color.fromARGB(255, 80, 79, 79),
                fontSize: 16,
                fontWeight: FontWeight.normal
              ),),
            ),
        Positioned(
          top: 240,
          left: 10,
          child: Icon(Icons.account_box,color: Colors.white,size: 30,),
        ),
        Positioned(
          top: 234,
          left: 50,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child:Text("Profil",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
          ),
        ),
        Positioned(
          top: 300,
          left: 10,
          child: Icon(FontAwesomeIcons.xTwitter,color: Colors.white,size: 30,),
        ),
        Positioned(
          top: 295,
          left: 50,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child:Text("Premium",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
          ),
        ),
        Positioned(
          top: 350,
          left: 50,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child:Text("Markah",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
          ),
        ),
        Positioned(
          top: 400,
          left: 50,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child:Text("Daftar",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
          ),
        ),
        Positioned(
          top: 450,
          left: 50,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child:Text("Permintaan pengikut",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
          ),
        ),
        Positioned(
          top: 500,
          left: 50,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child:Text("Monetisasi",style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            ),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
          ),
        ),
        Positioned(
          top: 210,
          left: 10,
          child: Container(
            width: 290,
            height: 2,
            color: const Color.fromARGB(255, 107, 103, 103),
          ),
        ),
        Positioned(
          top: 580,
          left: 10,
          child: Container(
            width: 290,
            height: 2,
            color: const Color.fromARGB(255, 107, 103, 103),
          ),
        ),
        Positioned(
          top: 600,
          left: 10,
          child:Text("Alat Profesional",style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            ),),
        ),
        Positioned(
          top: 650,
          left: 10,
          child:Text("Pengaturan & Dukungan",style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            ),),
        ),
        Positioned(
          top: 585,
          left: 240,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child: Icon(Icons.arrow_drop_down_outlined,size: 30,),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: CircleBorder(),
            ),
          ),
        ),
        Positioned(
          top: 635,
          left: 240,
          child: ElevatedButton(
            onPressed: () {
              
            },
            child: Icon(Icons.arrow_drop_down_outlined,size: 30,),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: CircleBorder(),
            ),
          ),
        ),
        
      ],
    ));
  }
}
