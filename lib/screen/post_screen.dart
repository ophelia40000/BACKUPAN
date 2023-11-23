import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/screen/globals.dart' as globals;
import 'package:cloud_firestore/cloud_firestore.dart';



class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  
  final simpanteks=TextEditingController();
  IconData centang=Icons.abc_outlined;
  Color warna =Colors.red;
  bool tombol=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: globals.warna1,
        appBar: AppBar(
          backgroundColor: globals.warna1,
          elevation: 0.0,
          leading: IconButton(
            icon:  Icon(Icons.close,color: globals.warna2,),
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BottomNavBar()));
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));
                  globals.ayam=simpanteks.text;
                  globals.ikan=130;
                  globals.x=1;
                  createUser(name: globals.ayam);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: const EdgeInsets.all(5),
                alignment: Alignment.center,
                width: 110,
                child:  Text(
                  "Tweet",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: globals.warna2),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              child: TextField(
                controller: simpanteks,
                style:  TextStyle(color: globals.warna2, fontSize: 35),
                maxLines: null,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "  What's happening?",
                  hintStyle:  TextStyle(color: globals.warna2, fontSize: 35),
                  prefixIcon: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: globals.warna2),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    margin: const EdgeInsets.all(5),
                    child:  Icon(
                      Icons.person_2_rounded,
                      color: globals.warna2,
                    ),
                  ),
                ),
              ),
            ),
            Container(), //pemisah
            Positioned(
              //global or private
              left: 10,
              bottom: 80,
              
              child: ElevatedButton(
                onPressed: () {
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(globals.warna3)),
                child:   const Row(children: [
                  Icon(Icons.circle_outlined),
                  Text(" Everyone Can Reply")
                ]),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_photo_alternate,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              left: 70,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.gif_box_outlined,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            
            Positioned(
              left: 140,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.list_alt,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              left: 210,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.room_outlined,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.blue,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      );
  }
  Future createUser({required String name}) async{
    final docUser=FirebaseFirestore.instance.collection('post').doc();
    

    final json={
      'name' :globals.nama,
      'text' : name,
      'date' :DateTime.now().toString(),
      'url' :globals.url,
    };
    await docUser.set(json);
  }
}