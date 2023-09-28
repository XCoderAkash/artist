// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List name = ['Asha Bhosle', 'Arjit Singh', 'Neha Kakkar', 'Guru Randhawa'];
  List song = ['700+ songs', '500+ song', '600+ song', '600+ song'];
  List images = [
    'assets/images/asha.jpg',
    'assets/images/arjit.jpg',
    'assets/images/neha.jpg',
    'assets/images/guru.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
          leading: Icon(
            Icons.sort,
            size: 27,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.search_rounded,
              size: 27,
              color: Colors.black,
            ),
            SizedBox(
              width:
                  20, //agar ye nahi deyengee to search baar ;ast me chala jayega,,,so ya to paadding widget use kar do,,, ya size box with width
            ),
          ],
        ),
        body: ListView(
          //scrollrable hone chaheyeee
          shrinkWrap: true,
          physics:
              BouncingScrollPhysics(), //list view ko  jitna space chaheyee utna hi lena,
          children: [
            SizedBox(
              height:
                  20, //uper se thora nechee aa jayegaa,,kuch space mil jayee
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                "Rocking Week",
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                "2021 top song to hang on",
                style: TextStyle(fontSize: 19, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore",
                      style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "RECOMANDED",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 235, 11, 41).withOpacity(0.8)),
                ),
                Text(
                  "SHOW 2021",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 41, 37, 2).withOpacity(0.8)),
                ),
                Text(
                  "NEW SONG ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 37, 34, 4).withOpacity(0.8)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 350,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  //index ke through song name image ko fetch kae sakte hai
                  return Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      children: [
                        Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.cover))),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          name[index],
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 22, 1, 4).withOpacity(
                                0.8,
                              )),
                        ),
                        Text(
                          song[index],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 60, 11, 235)
                                  .withOpacity(0.8)),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text(
                    'Top Song',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color:
                            Color.fromARGB(255, 11, 235, 48).withOpacity(0.9)),
                  ),
                  Icon(
                    Icons.music_note,
                    color: Colors.orange,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.all(60),
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/asha.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ));
              },
            ),
            SizedBox(
              height: 0,
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(60),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/lata.jpg'),
                          fit: BoxFit.cover)),
                );
              },
            ),
            SizedBox(
              height: 0,
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(60),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/kishore.jpg'),
                          fit: BoxFit.cover)),
                );
              },
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(60),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/rafi.jpeg'),
                          fit: BoxFit.cover)),
                );
              },
            ),
            SizedBox(
              height: 5,
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(60),
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage('assets/images/aziz.jpg'),
                          fit: BoxFit.cover)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
